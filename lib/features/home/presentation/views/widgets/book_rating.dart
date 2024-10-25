import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.scale = 1.0,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.bookRating,
  });
  final BookRatingModel bookRating;
  final double scale;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: const Color(0xffffdd4f),
          size: 16 * scale,
        ),
        SizedBox(
          width: 6 * scale,
        ),
        Text(
          (bookRating.averageRating??0).toString(),
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 6 * scale,
        ),
        Text(
          '(${bookRating.retingCount??0})',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xff707070),
          ),
        )
      ],
    );
  }
}
