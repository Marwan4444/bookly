import 'package:bookly/Features/home/presentation/view/home_view.dart';
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
        scaffoldBackgroundColor: kPrimeryColor,
       textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'Montserrat'),
      ),
      home: SplashView(),
      routes: {
        '/home':(context) => const HomeView(),
      },
      
    );
  }
}

