import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  final Animation<Offset> animation;

  const SlidingText({super.key, required this.animation});

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: const Text(
        'Read Free Books',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
