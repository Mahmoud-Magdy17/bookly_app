import 'package:bookly_app/core/errors/failture.dart';
import 'package:dartz/dartz.dart';

import '../../../home/data/models/book_model/book_model.dart';

abstract class SearchRepo{
  Future<Either<Failture, List<BookModel>>> search(String bookName);

}