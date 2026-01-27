import 'package:flutter/material.dart';

class SimilaryBookItem extends StatelessWidget {
  final String imageUrl;
  final bool isSkeleton;

  const SimilaryBookItem({
    super.key,
    required this.imageUrl,
    this.isSkeleton = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: AspectRatio(
        aspectRatio: 2 / 3, 
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: isSkeleton
              ? Container(color: Colors.grey.shade300)
              : Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}
