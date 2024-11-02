import 'dart:developer';

import 'package:bookly_app/core/errors/failture.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiServices apiServices;

  SearchRepoImpl({required this.apiServices});
  @override
  Future<Either<Failture, List<BookModel>>> search(String bookName) async {
    String endPoint =
        "volumes?Filtering=free-ebooks&q=$bookName&sorting=relevance";
    try {
      var jSonData = await apiServices.get(endPoint);
      List<BookModel> books = [];
      for (var book in jSonData["items"]) {
        try {
          books.add(BookModel.fromJson(book));
        } catch (e) {}
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
