import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookThumbnail extends StatelessWidget {
  const CustomBookThumbnail({
    super.key,
    required this.thumbnail,
    required this.aspectRatio,
    required this.borderRadius,
  });
  final double aspectRatio;
  final String thumbnail;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(imageUrl: thumbnail),
      ),

      // Container(
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(borderRadius),
      //     image: DecorationImage(
      //       image: NetworkImage(thumbnail),
      //       fit: BoxFit.fill,
      //     ),
      //   ),
      // ),
    );
  }
}
