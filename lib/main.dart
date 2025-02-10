import 'package:flutter/material.dart';
import 'package:phones_app/views/auth/sign_in/sign_in_page.dart';
import 'package:phones_app/views/auth/sign_up/signup_page.dart';
import 'package:phones_app/views/home/homescreen_page.dart';
import 'package:phones_app/views/splash/splashview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      home: Splashview(),
    );
  }
}
