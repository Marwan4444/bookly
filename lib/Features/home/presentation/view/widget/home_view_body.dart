import 'package:bookly/Features/home/presentation/view/widget/book_listview.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_appbar.dart';


import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomAppBar(),
     FeaturedBookListview()]);
  }
}


