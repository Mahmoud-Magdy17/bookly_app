import 'package:bookly_app/features/book_details/presentation/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/home_view.dart';

class AppRouter {
  static String kHomeView = "/homeView";
  static String kBookDetails = "/bookDetails";

  static Map<String, dynamic> router = {
    kHomeView: const HomeView(),
    kBookDetails: const BookDetailsView(),
  };
}
