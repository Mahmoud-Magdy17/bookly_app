import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../features/home/presentation/views/widgets/book_rating.dart';

class BookItemDetails extends StatelessWidget {
  const BookItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
          const Spacer(),
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
    );
  }
}
