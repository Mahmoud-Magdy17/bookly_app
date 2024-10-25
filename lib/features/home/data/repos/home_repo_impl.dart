import 'package:bookly_app/core/errors/failture.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failture, List<BookModel>>> fetchNewestBooks() async {
    String endPoint = "volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest";

    try {
      var jSonData = await ApiServices(Dio()).get(endPoint);
      List<BookModel> books = [];
      for (var book in jSonData["items"]) {
        books.add(book);
      }
      return right(books);
    } catch (e) {
      return left(ServerFailture());
    }
  }

  @override
  Future<Either<Failture, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}