part of 'similary_books_cubit.dart';

@immutable
sealed class SimilaryBooksState {}

final class SimilaryBooksInitial extends SimilaryBooksState {}

final class SimilaryBooksLoading extends SimilaryBooksState {}

final class SimilaryBooksSuccess extends SimilaryBooksState {
  final List<BookModel> books;
  SimilaryBooksSuccess(this.books);
}

final class SimilaryBooksFailure extends SimilaryBooksState {
  final String errMessage;
  SimilaryBooksFailure(this.errMessage);
}
