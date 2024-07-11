import 'package:bookly/Features/home/data/data/mobels/book_model/book_model.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBook();
  Future<Either<Failure, List<BookModel>>> fetchBookItem();
}
