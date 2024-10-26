import 'package:bookly_app/core/app_router/router.dart';
import 'package:bookly_app/core/utils/functions.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_progress_indecator.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_thumbnail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomFeaturedListView extends StatelessWidget {
  const CustomFeaturedListView({super.key, this.scale = 1});
  final double scale;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27 * scale,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: () {
                    navigatorPush(
                      context: context,
                      viewId: AppRouter.kBookDetails,
                      arg: state.books[index],
                    );
                  },
                  child: CustomBookThumbnail(
                    thumbnail:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                    aspectRatio: 2.6 / 4,
                    borderRadius: 16,
                  ),
                );
              }),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 8,
                );
              },
              itemCount: state.books.length,
            ),
          );
        } else if (state is FeaturedBooksFailture) {
          return CustomErrorMessage(errorMsg: state.error);
        }
        return const CustomProgressIndicator();
      },
    );
  }
}
