import 'package:bookly_app/core/app_router/router.dart';
import 'package:bookly_app/core/utils/functions.dart';
import 'package:bookly_app/core/widgets/book_item_details.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../features/home/presentation/views/widgets/custom_book_thumbnail.dart';

class CustomBookListViewItem extends StatelessWidget {
  const CustomBookListViewItem({super.key, required this.book});
  final BookModel book;
  final String defaultThumbnail =
      'https://books.google.com/books/content?id=hmFHAAAAYAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: GestureDetector(
        onTap: () {
          navigatorPush(
            context: context,
            viewId: AppRouter.kBookDetails,
            arg: book,
          );
        },
        child: SizedBox(
          height: 130,
          child: Row(
            children: [
              CustomBookThumbnail(
                thumbnail: book.volumeInfo.imageLinks?.thumbnail??defaultThumbnail,
                aspectRatio: 2 / 3,
                borderRadius: 8,
              ),
              const SizedBox(width: 30),
              BookItemDetails(
                bookInfo: book.volumeInfo,
              )
            ],
          ),
        ),
      ),
    );
  }
}
