

import 'package:bookly/Features/home/presentation/view/widget/best_seller_listview.dart';

import 'package:bookly/Features/home/presentation/view/widget/book_listview.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_appbar.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
      SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBookListview(),
                SizedBox(height: 50),
                Text("Best Seller", style: Styles.textStyle18),
                SizedBox(height: 20),
                
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}

