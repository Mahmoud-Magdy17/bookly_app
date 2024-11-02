import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepoImpl searchRepo;
  Future<void> search(String bookName) async {
    emit(Searchloading());
    var result = await searchRepo.search(bookName);
    result.fold(
      (failture) {
        emit(SearchFailture(dioError: failture.dioError));
      },
      (books) {
        emit(SearchSuccess(books: books));
      },
    );
  }
}
