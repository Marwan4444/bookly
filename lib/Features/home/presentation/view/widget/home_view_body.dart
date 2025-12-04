import 'package:bookly/Features/home/presentation/view/widget/book_listview.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_appbar.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';


import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        CustomAppBar(),
       FeaturedBookListview(),
       SizedBox(height: 50,),
       Text("Best Seller",style: Styles.textStyle18,),
       SizedBox(height: 20,),
       BestSellerListViewItem(),
       ],
       ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12 ,bottom: 15),
      child: Row(
        children: [
          SizedBox(
            height: 130,
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.testImage),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


