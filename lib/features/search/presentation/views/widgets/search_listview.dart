import 'dart:developer';

import 'package:bookly_app/core/widgets/custom_book_listview_item.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_progress_indecator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_rating.dart';
import 'package:bookly_app/features/home/data/models/book_model/image_links.dart';
import 'package:bookly_app/features/home/data/models/book_model/volume_info.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'no_search_done.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchInitial) {
          return const NoSearchDone();
        } else if (state is SearchSuccess) {
          final List<BookModel> books = state.books;

          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(0),
            itemCount: books.length,
            itemBuilder: (context, index) {
              BookModel curBook = books[index];
              return CustomBookListViewItem(
                book: BookModel(volumeInfo: curBook.volumeInfo),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 20,
              );
            },
          );
        } else if (state is SearchFailture) {
          return CustomErrorMessage(errorMsg: state.dioError);
        }
        return const CustomProgressIndicator();
      },
    );
  }
}
