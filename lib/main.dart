import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/newest_books_cubit/newst_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentation/splash_view.dart';

void main() {
  setupSurviceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return NewstBooksCubit(
              getIt.get<HomeRepoImpl>(),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              getIt.get<HomeRepoImpl>(),
            )..fetchFeaturedBooks();
          },
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.montserratAlternatesTextTheme(
              ThemeData.dark().textTheme),
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
