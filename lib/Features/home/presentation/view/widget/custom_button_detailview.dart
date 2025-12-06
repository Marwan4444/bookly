import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomButtonDetialsView extends StatelessWidget {
  const CustomButtonDetialsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              color: kPrimeryColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            ),
            child: const Center(
              child: Text(
                "Buy  |  \$19.99",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
     //   const SizedBox(width: 15),
        Expanded(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
              border: Border.all(color: kPrimeryColor, width: 2),
            ),
            child: const Center(
              child: Text(
                "Preview",
                style: TextStyle(
                  fontSize: 18,
                 
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}