import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListviewItem extends StatelessWidget {
  const CustomListviewItem({super.key, required this.ImageUrl});

  final String ImageUrl ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
           imageUrl: ImageUrl,
            fit: BoxFit.fill, 
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),)
      ),
    );
  }
}
