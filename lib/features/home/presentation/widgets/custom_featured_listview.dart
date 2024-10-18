import 'package:bookly_app/features/home/presentation/widgets/custom_book_thumbnail.dart';
import 'package:flutter/material.dart';

class CustomFeaturedListView extends StatelessWidget {
  const CustomFeaturedListView({super.key, this.scale = 1});
  final double scale;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.27 * scale,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return const CustomBookThumbnail(
            thumbnail:
                'http://books.google.com/books/content?id=2bCdaZ7KvDsC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
            aspectRatio: 2.6 / 4,
            borderRadius: 16,
          );
        }),
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 8,
          );
        },
        itemCount: 5,
      ),
    );
  }
}
