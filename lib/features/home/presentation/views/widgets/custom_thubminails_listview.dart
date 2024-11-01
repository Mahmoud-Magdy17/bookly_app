import 'package:bookly_app/core/app_router/router.dart';
import 'package:bookly_app/core/utils/functions.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'custom_book_thumbnail.dart';

class CustomThubminailsListView extends StatelessWidget {
  const CustomThubminailsListView({
    super.key,
    required this.books,
    required this.scale,
  });
  final double scale;
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.27 * scale,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: () {
                navigatorPush(
                  context: context,
                  viewId: AppRouter.kBookDetails,
                  arg: books[index],
                );
              },
              child: CustomBookThumbnail(
                thumbnail: books[index].volumeInfo.imageLinks?.thumbnail ??
                    'https://th.bing.com/th/id/OIP.6l9iAf-vEbXm5d1_LIFGJAHaHa?rs=1&pid=ImgDetMain',
                aspectRatio: 2.6 / 4,
                borderRadius: 16,
              ),
            );
          }),
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 8,
            );
          },
          itemCount: books.length,
        ));
  }
}
