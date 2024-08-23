import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'custom_book_thumbnail.dart';

class CustomBestSellerListViewItem extends StatelessWidget {
  const CustomBestSellerListViewItem({super.key});
  final String thumbnail =
      'https://books.google.com/books/content?id=hmFHAAAAYAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            CustomBookThumbnail(
              thumbnail: thumbnail,
              aspectRatio: 2 / 3,
              borderRadius: 8,
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyyle20.copyWith(
                        fontFamily: kEleanoreFont,
                      ),
                    ),
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
