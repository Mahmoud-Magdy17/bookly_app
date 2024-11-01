import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'related_books_state.dart';

class RelatedBooksCubit extends Cubit<RelatedBooksState> {
  RelatedBooksCubit(this.homeRepo) : super(RelatedBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchRelatedBooks(String bookName) async {
    emit(RelatedBooksLoading());
    var result = await homeRepo.fetchRelatedBooks(bookName);
    result.fold(
      (failture) {
        emit(RelatedBooksFailture(dioError: failture.dioError));
      },
      (books) {
        log(books.toString());
        emit(RelatedBooksSuccess(books: books));
      },
    );
  }
}
