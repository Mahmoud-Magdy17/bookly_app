import 'package:bookly_app/core/app_router/router.dart';
import 'package:bookly_app/core/utils/functions.dart';
import 'package:flutter/material.dart';

import '../../features/home/presentation/widgets/best_seller_item_details.dart';
import '../../features/home/presentation/widgets/custom_book_thumbnail.dart';

class CustomBookListViewItem extends StatelessWidget {
  const CustomBookListViewItem({super.key});
  final String thumbnail =
      'https://books.google.com/books/content?id=hmFHAAAAYAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: GestureDetector(
        onTap: () {
          
          navigatorPush(context: context, viewId: AppRouter.kBookDetails);
        },
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
              const BestSellerItemDetails()
            ],
          ),
        ),
      ),
    );
  }
}
