import 'package:flutter/material.dart';
import 'package:islami_ecom_app/on_boarding_page.dart';
import 'sign_in_page.dart';
import 'sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
    );
  }
}

