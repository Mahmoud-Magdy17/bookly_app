import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomFeaturedListItem extends StatelessWidget {
  const  CustomFeaturedListItem({super.key, required this.thumbnail});
  final String thumbnail;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(imageUrl: thumbnail,fit: BoxFit.fill,),
      ),
    );

    // AspectRatio(
    //   aspectRatio: 2.6 / 4,
    //   child: Container(
    //     decoration: BoxDecoration(
    //         color: Colors.green,
    //         borderRadius: BorderRadius.circular(16),
    //         image: DecorationImage(
    //           image: NetworkImage(thumbnail),
    //           fit: BoxFit.fill,
    //         )),
    //   ),
    // );
  }
}
