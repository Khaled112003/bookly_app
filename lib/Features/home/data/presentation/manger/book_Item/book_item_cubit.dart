import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/mobels/book_model/book_model.dart';

part 'book_item_state.dart';

class BookItemCubit extends Cubit<BookItemState> {
  BookItemCubit() : super(BookItemInitial());
  
}
