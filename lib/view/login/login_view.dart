// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/service/Auth_service.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:nectar/widget/Text_field.dart';
import 'package:provider/provider.dart';

enum BtnType { primary, icon }
@RoutePage()

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  @override
  Widget build(BuildContext context) {
    final loginProvider = context.watch<LoginViewModel>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 280,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/login-bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 120),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Get your groceries\nwith nector",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xff030303),
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: PrimaryTextField(
                keyboardType: TextInputType.number, 
                    onTap: (){
                      // loginProvider.showCountry(context);
                      loginProvider.navigateToPhoneView();
                    },
                inputDecoration: InputDecoration(
                  prefixIcon:
                     Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          loginProvider.countryFlag ?? '🇮🇳',
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(width: 8),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            loginProvider.countryCode ?? '+91',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                ),
              ),
            ),
            Text("Or connect with social media"),
            SizedBox(height: 20),
            PrimaryButton(
              title: "Continue with Facebook",
              color: Color(0xff5383EC),
              icon: 'assets/images/facebook.svg',
              onPressed: null,
            ),
            SizedBox(height: 10),
            PrimaryButton(
              title: "Continue with Google",
              color: Color(0xff4A66AC),
              icon: 'assets/images/google.svg',
              onPressed: locator<AuthService>().signInWithGoogle,
            ),
          ],
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  PrimaryButton({super.key, required this.title, required this.color, required this.icon, required this.onPressed});
  
  final String? title;
  final Color color;
  final String? icon;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        backgroundColor: WidgetStatePropertyAll(color),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 300,
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  SvgPicture.asset(icon!),
                  SizedBox(width: 20),
                ],
                Text(title!, style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
