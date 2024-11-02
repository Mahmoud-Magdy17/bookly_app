part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<BookModel> books;

  const SearchSuccess({required this.books});
}

final class SearchFailture extends SearchState {
  final String dioError;

  const SearchFailture({required this.dioError});
}

final class Searchloading extends SearchState {}
