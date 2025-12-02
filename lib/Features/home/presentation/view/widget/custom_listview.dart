import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListview extends StatelessWidget {
  const CustomListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
        // height: 400,
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            image: DecorationImage(image: AssetImage(Assets.testImage), fit: BoxFit.fill,),
          ),
        ),
      ),
    );
  }
}