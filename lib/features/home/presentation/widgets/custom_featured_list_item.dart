import 'package:flutter/material.dart';

class CustomFeaturedListItem extends StatelessWidget {
  const CustomFeaturedListItem({super.key});
  final String thumbnail =
      'http://books.google.com/books/content?id=2bCdaZ7KvDsC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api';
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(thumbnail),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
