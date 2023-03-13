import 'package:flutter/material.dart';
import 'package:skin_cancer_detection_app/pages/login.dart';
import 'package:skin_cancer_detection_app/pages/signup.dart';
import 'package:skin_cancer_detection_app/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        "WelomePage" :(context) => const WelcomePage(),
        "LoginPage" : (context) => const LoginPage() ,
        "SignupPage" :(context)  => const SignUpPage(),
      },
      debugShowCheckedModeBanner: false,
      home:  const WelcomePage(),
    );
  }
}
