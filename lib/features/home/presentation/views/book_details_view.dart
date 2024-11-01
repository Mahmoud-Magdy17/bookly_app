import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_rating.dart';
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';
import 'package:bookly_app/features/home/presentation/manger/related_books_cubit/related_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key});

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override

  Widget build(BuildContext context) {
    final BookModel arg =
        ModalRoute.of(context)?.settings.arguments as BookModel;
    BlocProvider.of<RelatedBooksCubit>(context)
        .fetchRelatedBooks(arg.volumeInfo.title!);

    return Scaffold(
      appBar: const BookDetailsAppBar(),
      body: BookDetailsViewBody(
          bookDetails: VolumeInfo(
        title: arg.volumeInfo.title,
        authors: arg.volumeInfo.authors,
        bookRating: BookRatingModel(averageRating: 3, retingCount: 2),
        imageLinks: arg.volumeInfo.imageLinks,
      )),
    );
  }
}
