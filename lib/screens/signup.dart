import 'package:afri_fair/utils/colors.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            spacing: 15,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Welcome to AfriFair !',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    'Sign up for Free',
                    style: TextStyle(color: AppColors.black, fontSize: 19),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.purpleAccented,
                ),
                child: Column(
                  spacing: 20,
                  children: [
                    // Name Input
                    Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                        TextField(
                          autofillHints: ['name'],
                          decoration: InputDecoration(
                            hintText: 'Enter your name...',
                            hintStyle: TextStyle(fontSize: 14),
                            filled: true,
                            fillColor: AppColors.white,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 15,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Email Input
                    Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                        TextField(
                          autofillHints: ['email'],
                          decoration: InputDecoration(
                            hintText: 'Enter your email...',
                            hintStyle: TextStyle(fontSize: 14),
                            filled: true,
                            fillColor: AppColors.white,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 15,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Password Input
                    Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                        TextField(
                          autofillHints: ['password'],
                          decoration: InputDecoration(
                            hintText: 'Enter your password...',
                            hintStyle: TextStyle(fontSize: 14),
                            filled: true,
                            fillColor: AppColors.white,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 15,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Confirm Password Input
                    Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Confirm Password',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                        TextField(
                          autofillHints: ['confirm_password'],
                          decoration: InputDecoration(
                            hintText: 'Confirm your password...',
                            hintStyle: TextStyle(fontSize: 14),
                            filled: true,
                            fillColor: AppColors.white,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 15,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Sign up Buttons
                    Column(
                      spacing: 5,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                AppColors.purple,
                              ),
                              padding: WidgetStateProperty.all(
                                EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              ),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ), // No rounding
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        Text('or'),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                AppColors.white,
                              ),
                              padding: WidgetStateProperty.all(
                                EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              ),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    5,
                                  ), // No rounding
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 10,
                              children: [
                                Image.asset('assets/google_icon.png'),
                                Text(
                                  'Sign up with Google',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Aready have an account?'),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, '/login');
                  },child: Text('Login')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
