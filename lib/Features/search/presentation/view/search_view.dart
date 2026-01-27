import 'package:bookly/Features/search/presentation/view/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

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
        
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Search Book",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
        backgroundColor: Colors.transparent,
        body: SearchViewBody()
      ),
    );  
  }
}