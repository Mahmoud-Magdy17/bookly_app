import 'package:bookly_app/features/home/presentation/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';

class AppRouter {
  static String kHomeView = "/homeView";
  static String kSearchView = "/searchView";
  static String kBookDetails = "/bookDetails";

  static Map<String, dynamic> router = {
    kHomeView: const HomeView(),
    kSearchView: const SearchView(),
    kBookDetails: const BookDetailsView(),
  };
}
