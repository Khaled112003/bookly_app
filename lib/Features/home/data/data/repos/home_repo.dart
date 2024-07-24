import 'package:bookly/core/book_model/book_model.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBook();
  Future<Either<Failure, List<BookModel>>> fetchBookItem();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBookItem({required String categery });
}
