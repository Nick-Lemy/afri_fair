import 'package:afri_fair/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            spacing: 32,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to AfriFair !',
                style: TextStyle(color: AppColors.black, fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 250),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColors.purpleAccented,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
