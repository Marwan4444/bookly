import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Bookrating extends StatelessWidget {
  const Bookrating({super.key});

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
          "4.5",
          style:Styles.textStyle16
        ),
        const SizedBox(width: 5),
        Text(
          "(250)",
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}