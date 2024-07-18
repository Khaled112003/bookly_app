import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/mobels/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'fetchsimilairbookitem_state.dart';

class FetchsimilairbookitemCubit extends Cubit<FetchsimilairbookitemState> {
  FetchsimilairbookitemCubit(this.homeRepo) : super(SimilairbookitemInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilairbookitem({required String categery}) async {
    emit(SimilairbookitemLoading());
    var result = await homeRepo.fetchSimilarBookItem(categery: categery);
    result.fold((failure) {
      emit(Similairbookitemfailure(failure.errorMassage));
    }, (books) {
      emit(SimilairbookitemSucsees(books));
    });
  }

}
