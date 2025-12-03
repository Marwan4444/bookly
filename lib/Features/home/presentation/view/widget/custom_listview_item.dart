import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListviewItem extends StatelessWidget {
  const CustomListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
       
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            image: DecorationImage(image: AssetImage(Assets.testImage), fit: BoxFit.fill,),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

}