import 'package:flutter/material.dart';
import 'package:job_hunt/screens/splash_screen.dart';
import 'package:job_hunt/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JobFinder',
      home: const SplashScreen(),
      theme: ThemeData(
        primaryColor: const Color(0xFF5F5FFF),
        highlightColor: const Color(0XFF030047),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0XFF030047),
          ),
          headline2: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF5F5FFF),
          ),
          headline3: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
