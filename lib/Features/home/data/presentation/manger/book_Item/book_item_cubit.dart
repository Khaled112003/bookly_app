import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../../../../core/book_model/book_model.dart';

part 'book_item_state.dart';

class BookItemCubit extends Cubit<BookItemState> {
  BookItemCubit(this.homeRepo) : super(BookItemInitial());
  final HomeRepo homeRepo;
  Future<void> fetchBookItem()async{
    emit(BookItemLoding());
    var result =await homeRepo.fetchBookItem();
    result.fold((failure){
      emit(BookItemFailure( failure.errorMassage));
    }, (books) {
      emit(BookItemSuccses( books));
    });
  }
}
