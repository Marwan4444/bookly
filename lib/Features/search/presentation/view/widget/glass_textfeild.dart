import 'dart:ui';

import 'package:bookly/Features/search/presentation/manger/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlassTextfeild extends StatelessWidget {
  const GlassTextfeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white30, width: 1.5),
          ),
    
          child: TextField(
            onSubmitted: (query){
              context.read<SearchBooksCubit>().searchBooks(query);
            },
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              hintText: "Enter Book name",
              hintStyle: TextStyle(color: Colors.white70),
              border: InputBorder.none,
              suffixIcon: Icon(Icons.search, color: Colors.white),

            ),
          ),
        ),
      ),
    );
  }
}
