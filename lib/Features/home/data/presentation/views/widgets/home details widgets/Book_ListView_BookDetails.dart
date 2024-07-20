
import 'package:bookly/Features/home/data/presentation/manger/similarbookitem/fetchsimilairbookitem_cubit.dart';
import 'package:bookly/core/widgets/failure_error_massege.dart';
import 'package:bookly/core/widgets/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home widgets/Custom_Book_Item.dart';

class BookListViewForBookDetails extends StatelessWidget {
  const BookListViewForBookDetails({super.key, });
  

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchsimilairbookitemCubit, FetchsimilairbookitemState>(
      builder: (context, state) {
        if (state is SimilairbookitemSucsees) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.15,
    child: ListView.builder(
      itemCount: state.books.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: CustomBookItem(

            imageurl:state.books[index].volumeInfo.imageLinks.thumbnail
            
                
          )
        );
      },
    ),
  );
}
else if (state is Similairbookitemfailure){
  return FailureErrorMessage(errormassage:state.errorMassage );
}
else{
  return const LoadingIndicator();
}
      },
    );
  }
}
