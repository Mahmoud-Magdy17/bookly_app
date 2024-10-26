import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_rating.dart';
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final BookModel arg =
        ModalRoute.of(context)?.settings.arguments as BookModel;
    return Scaffold(
      appBar: const BookDetailsAppBar(),
      body: Column(
        children: [
          BookDetailsViewBody(
              bookDetails: VolumeInfo(
            title: arg.volumeInfo.title,
            authors: arg.volumeInfo.authors,
            bookRating: BookRatingModel(averageRating: 3, retingCount: 2),
            imageLinks: arg.volumeInfo.imageLinks,
          )),
        ],
      ),
    );
  }
}
