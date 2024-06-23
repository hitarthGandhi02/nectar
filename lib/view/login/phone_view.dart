import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:nectar/widget/Text_field.dart';
import 'package:provider/provider.dart';

@RoutePage()

class PhoneView extends StatelessWidget {
   PhoneView({super.key});

  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
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
                "Enter your mobile number",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "Mobile number",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: PrimaryTextField(
                  controller: phoneController,
                  autoFocus: true,
                  validator: (value) {
                    return loginProvider.validateContactNumber(value);
                  },
                  keyboardType: TextInputType.number,
                  inputDecoration: InputDecoration(
                    prefixIcon: GestureDetector(
                      onTap: () {
                        loginProvider.showCountry(context);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            loginProvider.countryFlag ?? '🇮🇳',
                            style: const TextStyle(fontSize: 24),
                          ),
                          const SizedBox(width: 8),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              loginProvider.countryCode ?? '+91',
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
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
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            loginProvider.getNumber(phoneController.text);
            locator<AppRouter>().push(OtpRoute());
          }
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