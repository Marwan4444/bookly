import 'package:bookly/Features/home/presentation/view/widget/book_rating.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomTextDetailsBook extends StatelessWidget {
  const CustomTextDetailsBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 18, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                "Harry Potter and the chamber",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                  fontFamily: kGtSectraFine,
                  color: Colors.white,  
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "J.K Rowling",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
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
                    color: Colors.white,
                  ),
                ),
               Bookrating(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}