import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_rating.dart';
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_featured_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_featured_listview.dart';
import 'book_details_button.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookDetails});
  final VolumeInfo bookDetails;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  25.0),
        child: ListView(
          
          children: [
            Center(
              child: SizedBox(
                height: 260,
                child: CustomFeaturedListItem(
                  thumbnail: bookDetails.imageLinks?.thumbnail ??
                      'https://th.bing.com/th/id/OIP.6l9iAf-vEbXm5d1_LIFGJAHaHa?rs=1&pid=ImgDetMain',
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              bookDetails.title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
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
                bookDetails.authors?[0]??'Auther',
                style: Styles.textStyle18.copyWith(),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
              bookRating: BookRatingModel(
                averageRating: bookDetails.bookRating.averageRating,
                retingCount: bookDetails.bookRating.retingCount,
              ),
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
              child: SizedBox(
                height: 30,
                child: Row(
                  children: [
                    Text(
                      "Featured Books",
                      style: Styles.textStyle18,
                    ),
                  ],
                ),
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
      ),
    );
  }
}
