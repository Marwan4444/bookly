import 'package:bookly/Features/home/presentation/view/widget/best_seller_view_item.dart';
import 'package:flutter/material.dart';

class SearchBookList extends StatelessWidget {
  const SearchBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context, int index) {
          return BestSellerListViewItem();
        },
      ),
    );
  }
}