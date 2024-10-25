import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit(this.homeRepo) : super(NewstBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewstBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failture) {
        emit(NewstBooksFailture(failture.dioError));
      },
      (books) {
        emit(NewstBooksSuccess(books));
      },
    );
  }
}
