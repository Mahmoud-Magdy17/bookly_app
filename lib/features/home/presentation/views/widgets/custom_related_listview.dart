import 'dart:developer';

import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_progress_indecator.dart';
import 'package:bookly_app/features/home/presentation/manger/related_books_cubit/related_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_thubminails_listview.dart';

class CustomRelatedListView extends StatelessWidget {
  const CustomRelatedListView({super.key, this.scale = 1});
  final double scale;
  @override
  Widget build(BuildContext context) {
    log("CustomRelatedListView");
    return BlocBuilder<RelatedBooksCubit, RelatedBooksState>(
      builder: (context, state) {
        if (state is RelatedBooksSuccess) {
          return CustomThubminailsListView(
            books: state.books,
            scale: scale,
          );
        } else if (state is RelatedBooksFailture) {
          return CustomErrorMessage(errorMsg: state.dioError);
        }
        return const CustomProgressIndicator();
      },
    );
  }
}
