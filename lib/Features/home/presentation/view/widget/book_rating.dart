import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Bookrating extends StatelessWidget {
  const Bookrating({super.key , required this.rating , required this.count}); 

 final num rating ;
final int count ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amberAccent,
          size: 24,
        ),
        const SizedBox(width: 5),
        Text(
          rating.toString(),
          style:Styles.textStyle16
        ),
        const SizedBox(width: 5),
        Text(
          "($count)",
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}