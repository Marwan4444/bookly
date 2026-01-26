import 'package:bookly/Features/home/presentation/view/widget/custom_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Theme(
              data:  ThemeData.light(),
              child: Skeletonizer(
                enabled: true,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: CustomListviewItem(
                        ImageUrl:
                            'https://dummyimage.com/200x300/cccccc/ffffff',
                      ),
                    );
                  },
                ),
              ),
            ),
          );
  }
}