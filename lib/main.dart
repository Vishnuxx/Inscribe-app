import 'package:flutter/material.dart';
import 'package:inscribe/Auth/screens/signup.dart';
import 'package:inscribe/OnBoarding/screens/on_borading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: const SignUpScreen(),
    );
  }
}
