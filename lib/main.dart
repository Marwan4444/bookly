import 'package:bookly/Features/splash/presetation/view/splash_view.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimeryColor
      ),
      home: SplashView(),
      
    );
  }
}

