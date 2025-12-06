import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomAppbarDetailsview extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbarDetailsview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart),
        ),
      ],
      title: const Text("Book Details"),
      backgroundColor: kPrimeryColor,
    );
  }

   @override
     Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}