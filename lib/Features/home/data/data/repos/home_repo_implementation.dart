import 'package:bookly/Features/home/data/data/mobels/book_model/book_model.dart';
import 'package:bookly/Features/home/data/data/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation extends HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBook() {
    // TODO: implement fetchBestSellerBook
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBookItem() {
    // TODO: implement fetchBookItem
    throw UnimplementedError();
  }
}