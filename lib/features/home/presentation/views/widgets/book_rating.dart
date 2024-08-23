import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
          size: 16,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          '(1658)',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xff707070),
          ),
        )
      ],
    );
  }
}
