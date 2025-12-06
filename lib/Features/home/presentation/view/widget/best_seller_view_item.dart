import 'package:bookly/Features/home/presentation/view/widget/book_rating.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         GoRouter.of(context).push('/bookdetailsview');
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 15, right: 12),
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
      
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 18, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        "Harry Potter and the chamber  ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold, 
                          height: 1.3,
                          fontFamily:kGtSectraFine
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                
                    const SizedBox(height: 5),
                    Text(
                      "J.K Rowling",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "19.99 \$",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Bookrating(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


