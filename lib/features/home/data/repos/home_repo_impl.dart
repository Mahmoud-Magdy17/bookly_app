import 'package:bookly_app/core/errors/failture.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failture, List<BookModel>>> fetchNewestBooks() async {
    String endPoint =
        "volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest";

    try {
      var jSonData = await apiServices.get(endPoint);
      List<BookModel> books = [];
      for (var book in jSonData["items"]) {
        books.add(book);
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailture.fromDioException(e));
      } else {
        return left(ServerFailture(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failture, List<BookModel>>> fetchFeaturedBooks() async{
    String endPoint =
        "volumes?Filtering=free-ebooks&q=subject:programming";

    try {
      var jSonData = await apiServices.get(endPoint);
      List<BookModel> books = [];
      for (var book in jSonData["items"]) {
        books.add(book);
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailture.fromDioException(e));
      } else {
        return left(ServerFailture(e.toString()));
      }
    }
  }
}
