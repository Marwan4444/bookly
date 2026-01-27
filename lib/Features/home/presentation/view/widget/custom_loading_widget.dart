import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({
    super.key,
    required this.loadedWidget,
    required this.isLoading, required this.height,
  });

  final Widget loadedWidget;
  final bool isLoading;
  final num height;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: Theme(
          data: ThemeData.light(),
          child: Skeletonizer(
            enabled: true,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: loadedWidget,
                );
              },
            ),
          ),
        ),
      );
    } else {
      return loadedWidget;
    }
  }
}
