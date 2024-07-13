part of 'best_seller_books_cubit.dart';

sealed class BestSellerBooksState extends Equatable {
  const BestSellerBooksState();

  @override
  List<Object> get props => [];
}

final class BestSellerBooksInitial extends BestSellerBooksState {}

final class BestSellerBooksLoading extends BestSellerBooksState {}

final class BestSellerBooksfailure extends BestSellerBooksState {
  final String errorMassage;

  const BestSellerBooksfailure(this.errorMassage);
}

final class BestSellerBooksSucsees extends BestSellerBooksState {
  final List<BookModel> books;

  const BestSellerBooksSucsees(this.books);
}
