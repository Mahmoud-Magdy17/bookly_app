import 'package:bookly_app/core/widgets/custom_book_listview_item.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_rating.dart';
import 'package:bookly_app/features/home/data/models/book_model/image_links.dart';
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemCount: 5,
      itemBuilder: (context, index) {
        return CustomBookListViewItem(
          book: BookModel(
            volumeInfo: VolumeInfo(
              imageLinks:const  ImageLinks(
                smallThumbnail: 'smallThumbnail',
                thumbnail: 'thumbnail',
              ),
              title: '',
              authors: const [],
              bookRating: BookRatingModel(
                averageRating: 4,
                retingCount:2,
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 20,
        );
      },
    );
  }
}
