
import 'package:bookly/Features/home/data/presentation/manger/best_seller_book/best_seller_books_cubit.dart';
import 'package:bookly/core/widgets/failure_error_massege.dart';
import 'package:bookly/core/widgets/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});
  

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksSucsees) {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    padding: EdgeInsets.zero,
    itemCount: state.books.length,
    itemBuilder: (context, index) {
      return  Padding(
        padding:const EdgeInsets.symmetric(vertical: 10),
        child: BestSallerItem(
          bookModel: state.books[index],
        ),
      );
    },
  );
}
else if( state is BestSellerBooksfailure){
  return  FailureErrorMessage(errormassage:state.errorMassage );
}else {
  return const LoadingIndicator();
}
      },
    );
  }
}
