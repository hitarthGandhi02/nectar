// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';
import 'package:nectar/view/login/login_view.dart';

@RoutePage()
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/onboarding.png"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 450),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset("assets/images/carrot.png"),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Welcome\nto our store",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy'),
                ),
                Text(
                  "Get your groceries in as fast as an hour",
                  style: TextStyle(fontSize: 12, color: Color(0xccFCFCFC)),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    context.router.push(LoginRoute());
                  },
                  child: PrimaryButton(
                    onPressed: null,
                    title: "Get Started",
                    color: Color(0xff53B175),
                    icon: "",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
