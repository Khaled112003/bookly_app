import 'package:bookly/Features/search/data/search_repo.dart';
import 'package:bookly/core/book_model/book_model.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utilits/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplementation extends SearchRepo{
  final ApiService apiService;

  SearchRepoImplementation({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> searchbook(  { required String searchPoint}) async {
    try {
      var data = await apiService.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=programming');

      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}