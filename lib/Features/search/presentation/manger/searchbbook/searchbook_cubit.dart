import 'package:bloc/bloc.dart';
import 'package:bookly/Features/search/data/repos/search_repo.dart';
import 'package:bookly/core/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'searchbook_state.dart';

class SearchbookCubit extends Cubit<SearchbookState> {
  SearchbookCubit(this.searchRepo) : super(SearchbookInitial());
 final SearchRepo searchRepo;
 Future<void> fetchSearchBooks({required String searchPoint }) async {
    emit((Searchbookloading()));
    var result = await searchRepo..searchbook(searchPoint: searchPoint);
    result.fold( (failure) {
      emit(Searchbookfailure (failure.errorMassage));
    }, (books) {
      emit(Searchbooksuccses(books));
    });
  }
 
}
