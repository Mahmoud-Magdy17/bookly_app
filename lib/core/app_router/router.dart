import 'package:bookly_app/features/home/presentation/home_view.dart';

class AppRouter{
  static String kHomeView = "/homeView";
  static String kBestSellerView = "/bestSellerView";

  static Map<String,dynamic> router = {
    kHomeView: const HomeView(),
    kBestSellerView: const HomeView(),
  };
}