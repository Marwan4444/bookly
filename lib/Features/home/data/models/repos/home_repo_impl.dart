import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/models/repos/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
  final data = await apiService.get(
    endpoint:
        'volumes?filtering=free-ebooks&sorting=newest&q=computer science',
  );

  final books = (data['items'] as List? ?? [])
      .map((item) => BookModel.fromJson(item))
      .toList();

  return Right(books);
} catch (e) {
  if (e is DioException) {
    return Left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
}

  
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
     try {
  final data = await apiService.get(
    endpoint:
        'volumes?filtering=free-ebooks&q=computer science',
  );

  final books = (data['items'] as List? ?? [])
      .map((item) => BookModel.fromJson(item))
      .toList();

  return Right(books);
} catch (e) {
  if (e is DioException) {
    return Left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
}

  
  }
}

extension on Response {
  void operator [](String other) {}
}
