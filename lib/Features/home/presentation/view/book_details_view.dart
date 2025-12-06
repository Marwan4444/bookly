import 'package:bookly/Features/home/presentation/view/widget/book_view_details_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

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
      child: BookDetailsViewBody());
  }
}