import 'package:bookly/Features/home/presentation/view/widget/custom_listview_item.dart';
import 'package:flutter/material.dart';

class FeaturedBookListview extends StatelessWidget {
  const FeaturedBookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomListviewItem(),
          );
        },
      ),
    );
  }
}