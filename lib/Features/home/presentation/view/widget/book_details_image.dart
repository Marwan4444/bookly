import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookDetailsImage extends StatelessWidget {
  const BookDetailsImage({
    super.key, required this.ImageUrl,
  });

final String ImageUrl ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: AspectRatio(
  aspectRatio: 2.7 / 4,
  child: ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: CachedNetworkImage(
      imageUrl: ImageUrl,
      fit: BoxFit.cover,
      placeholder: (context, url) => Container(
        color: Colors.grey.shade300,
      ),
      errorWidget: (context, url, error) => const Icon(
        Icons.broken_image,
        color: Colors.grey,
      ),
    ),
  ),
)
    );
  }
}