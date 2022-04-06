import 'package:flutter/material.dart';
import 'package:islami_ecom_app/screens/on_boarding_page.dart';
import 'package:islami_ecom_app/screens/sign_in_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.amber,

      ),
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}

