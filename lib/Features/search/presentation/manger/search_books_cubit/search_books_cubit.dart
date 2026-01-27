import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/search/data/repo/search_repo.dart';
import 'package:meta/meta.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBookState> {
  SearchBooksCubit(this.repo) : super(SearchBookInitial());

  final SearchRepo repo;

  Future<void> searchBooks(String query) async {
    if (query.isEmpty) return;

    emit(SearchBookLoading());

    final result = await repo.fetchSearchBooks(query: query);

    result.fold(
      (failure) => emit(SearchBookFailure(failure.errmessage)),
      (books) => emit(SearchBookSuccess(books)),
    );
  }
}

