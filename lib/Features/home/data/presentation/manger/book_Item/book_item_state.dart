part of 'book_item_cubit.dart';

sealed class BookItemState extends Equatable {
  const BookItemState();

  @override
  List<Object> get props => [];
}

final class BookItemInitial extends BookItemState {}
final class BookItemLoding extends BookItemState {}
final class BookItemFailure extends BookItemState {
final String errormassage;

 const BookItemFailure( this.errormassage);
}
final class BookItemSuccses extends BookItemState {
 final List <BookModel> books;

 const BookItemSuccses( this.books);
}