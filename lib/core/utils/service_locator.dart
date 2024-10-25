import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_services.dart';

final getIt = GetIt.instance;

void setupSurviceLocator() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      ApiServices(
        Dio(),
      ),
    ),
  );
}
