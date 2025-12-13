import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<String, List<BookModel>>> fetchFeaturedBooks();
  Future<List<BookModel>> fetchBestSellerBooks();
}