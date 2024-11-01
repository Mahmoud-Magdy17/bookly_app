part of 'related_books_cubit.dart';

sealed class RelatedBooksState extends Equatable {
  const RelatedBooksState();

  @override
  List<Object> get props => [];
}

final class RelatedBooksInitial extends RelatedBooksState {}

final class RelatedBooksSuccess extends RelatedBooksState {
  final List<BookModel> books;

  const RelatedBooksSuccess({required this.books});
}

final class RelatedBooksLoading extends RelatedBooksState {}

final class RelatedBooksFailture extends RelatedBooksState {
  final String dioError;

  const RelatedBooksFailture({required this.dioError});
}
