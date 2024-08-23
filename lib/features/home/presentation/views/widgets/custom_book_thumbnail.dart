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
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(borderRadius),
          image: DecorationImage(
            image: NetworkImage(thumbnail),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
