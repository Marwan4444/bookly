
import 'package:bookly/Features/search/data/presentation/view/widget/glass_textfeild.dart';
import 'package:bookly/Features/search/data/presentation/view/widget/search_book_list.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [GlassTextfeild(), SizedBox(height: 12), SearchBookList()],
      ),
    );
  }
}


