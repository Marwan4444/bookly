
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsRating extends StatelessWidget {
  const BookDetailsRating({
    super.key,
    required this.rating,
    required this.count,});
  final num rating ;
   final num count ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star,
            color: Colors.amberAccent, size: 24),
        const SizedBox(width: 5),
        Text(rating.toString(), style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text("($count)", style: Styles.textStyle14),
      ],
    );
  }
}