import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/widgets/custom_featured_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_featured_listview.dart';
import 'book_details_button.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 210,
            child: CustomFeaturedListItem(),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "The Jungle Book",
            style: Styles.textStyyle30.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 36,
          ),
          const BookDetailsButton(),
          const Padding(
            padding: EdgeInsets.only(
              top: 32.0,
              bottom: 18.0,
              left: 20,
              right: 20,
            ),
            child: Row(
              children: [
                Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomFeaturedListView(
              scale: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
