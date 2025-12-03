import 'package:bookly/Features/home/presentation/view/widget/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static const String id = 'HomeView';
  const HomeView({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 42, 0, 97),    
            Color.fromARGB(255, 85, 0, 160),   
            Color.fromARGB(255, 200, 60, 107), 
          ],
        ),  
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: HomeViewBody(),
      ),
    );
  }
}

