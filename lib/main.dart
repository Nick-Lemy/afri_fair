import 'package:afri_fair/screens/home.dart';
import 'package:afri_fair/screens/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/signup': (context) => SignUpPage()
        },
    );
  }
}
