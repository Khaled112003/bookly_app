part of 'searchbook_cubit.dart';

sealed class SearchbookState extends Equatable {
  const SearchbookState();

  @override
  List<Object> get props => [];
}

final class SearchbookInitial extends SearchbookState {}
final class Searchbookloading extends SearchbookState {}
final class Searchbooksuccses extends SearchbookState {
  final List<BookModel> books;

 const Searchbooksuccses( this.books);
}
final class Searchbookfailure extends SearchbookState {
  final String errorMassage;

 const Searchbookfailure(  this.errorMassage);
}
