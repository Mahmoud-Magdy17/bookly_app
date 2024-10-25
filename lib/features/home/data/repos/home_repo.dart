import 'package:bookly_app/core/errors/failture.dart';
import 'package:dartz/dartz.dart';

import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failture, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failture, List<BookModel>>> fetchBestSellerBooks();
}
