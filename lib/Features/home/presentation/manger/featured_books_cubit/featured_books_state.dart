part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {
  const FeaturedBooksState();
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;
 const FeaturedBooksSuccess(this.books);
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;
 const FeaturedBooksFailure(this.errMessage);
}
