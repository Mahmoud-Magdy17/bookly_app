import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_progress_indecator.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_thubminails_listview.dart';

class CustomFeaturedListView extends StatelessWidget {
  const CustomFeaturedListView({super.key, this.scale = 1});
  final double scale;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return CustomThubminailsListView(
            books: state.books,
            scale: scale,
          );
        } else if (state is FeaturedBooksFailture) {
          return CustomErrorMessage(errorMsg: state.error);
        }
        return const CustomProgressIndicator();
      },
    );
  }
}
