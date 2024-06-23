import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:nectar/core/service/Auth_service.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:nectar/widget/Text_field.dart';
import 'package:provider/provider.dart';

@RoutePage()
class OtpView extends StatelessWidget {
   OtpView({super.key});
  TextEditingController OTPcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
      final loginProvider = context.watch<LoginViewModel>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: null,  
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        backgroundColor: Colors.white,
      ),
      body: Form( 
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter your 6-digit code",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "Code",
                  style: TextStyle(fontSize: 16),
                ),
              ),

                 PrimaryTextField(
                  controller: OTPcontroller,
                  keyboardType: TextInputType.number,
                  inputDecoration: InputDecoration(
                    hintText: " - - - - - -",
                    prefixIcon: GestureDetector(
                      onTap: null,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                      ),
                    ),
                  ),
                
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: null,
        shape: const CircleBorder(),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () async {
            await locator<AuthService>().verifyOTP(OTPcontroller.text);
            await locator<AppRouter>().push( LocationRoute());            
        },
        child: const Icon(
          Icons.keyboard_arrow_right,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}