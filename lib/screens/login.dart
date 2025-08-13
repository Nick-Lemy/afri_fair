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
      body: Column(
        children: [
          Text(
            'Welcome to AfriFair !',
            style: TextStyle(color: AppColors.black, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
