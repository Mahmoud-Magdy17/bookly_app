import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_progress_indecator.dart';
import 'package:bookly_app/features/home/presentation/manger/newest_books_cubit/newst_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_listview_item.dart';

class BooksListViewWithDetails extends StatelessWidget {
  const BooksListViewWithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBooksCubit, NewstBooksState>(
      builder: (context, state) {
        if (state is NewstBooksSuccess) {
          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(0),
            itemCount: 5,
            itemBuilder: (context, index) {
              return CustomBookListViewItem(
                book: state.books[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 20,
              );
            },
          );
        } else if (state is NewstBooksFailture) {
          return CustomErrorMessage(
            errorMsg: state.error,
          );
        } else {
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
