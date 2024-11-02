import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';
import 'package:flutter/material.dart';

import '../../features/home/presentation/views/widgets/book_rating.dart';

class BookItemDetails extends StatelessWidget {
  const BookItemDetails({
    super.key,
    required this.bookInfo,
  });
  final VolumeInfo bookInfo;
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
              bookInfo.title!,
              style: Styles.textStyyle20.copyWith(
                fontFamily: kEleanoreFont,
              ),
            ),
          ),
          Text(
            bookInfo.authors == null
                ? "Auther"
                : (bookInfo.authors!.isEmpty ? "Auther" : bookInfo.authors![0]),
            style: Styles.textStyle14,
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                'free',
                style: Styles.textStyyle20.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              BookRating(
                bookRating: bookInfo.bookRating,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
