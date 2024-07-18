part of 'fetchsimilairbookitem_cubit.dart';

sealed class FetchsimilairbookitemState extends Equatable {
  const FetchsimilairbookitemState();

  @override
  List<Object> get props => [];
}

final class SimilairbookitemInitial extends FetchsimilairbookitemState {}

final class SimilairbookitemLoading extends FetchsimilairbookitemState {}

final class Similairbookitemfailure extends FetchsimilairbookitemState {
  final String errorMassage;

  const Similairbookitemfailure(this.errorMassage);
}

final class SimilairbookitemSucsees extends FetchsimilairbookitemState {
  final List<BookModel> books;

  const SimilairbookitemSucsees(this.books);
}
