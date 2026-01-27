import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/search/data/repo/search_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class SearchRepoImpl implements SearchRepo{
  final ApiService apiService;
  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchSearchBooks({
  required String query,
}) async {
  try {
     final data = await apiService.get(
        endpoint:
            'volumes?filtering=free-ebooks&sorting=newest&q=$query',
      );

    List<BookModel> books = [];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }

    return right(books);
  } catch (e) {
    return left(ServerFailure(e.toString()));
  }
}

   
}