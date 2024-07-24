import 'package:bookly/core/book_model/book_model.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{
  Future<Either<Failure, List<BookModel>>> searchbook(
    { required String searchPoint}
  );

  void fold(Null Function(dynamic failure) param0, Null Function(dynamic books) param1) {}
}