import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/related_books_cubit/related_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static String kHomeView = "/homeView";
  static String kSearchView = "/searchView";
  static String kBookDetails = "/bookDetails";

  static Map<String, dynamic> router = {
    kHomeView: const HomeView(),
    kSearchView: const SearchView(),
    kBookDetails: BlocProvider(
      create: (context) => RelatedBooksCubit(getIt<HomeRepoImpl>()),
      child: const BookDetailsView(),
    ),
  };
}
