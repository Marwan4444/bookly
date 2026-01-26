import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/models/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'similary_books_state.dart';

class SimilaryBooksCubit extends Cubit<SimilaryBooksState> {
  SimilaryBooksCubit(this.homeRepo,) : super(SimilaryBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilaryBooks({required String category}) async {
     emit(SimilaryBooksLoading());

  var result = await homeRepo.fetchSimilarBooks(category: category);();

  result.fold(
    (failure) {
      emit(SimilaryBooksFailure(failure.errmessage));
    },
    (books) {
      emit(SimilaryBooksSuccess(books));
    },
  );
  }
}
