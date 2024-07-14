import 'package:bookly/Features/home/data/presentation/manger/book_Item/book_item_cubit.dart';
import 'package:bookly/core/widgets/failure_error_massege.dart';
import 'package:bookly/core/widgets/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Custom_Book_Item.dart';

class booksListveiw extends StatelessWidget {
  const booksListveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookItemCubit, BookItemState>(
      builder: (context, state) {
        if (state is BookItemSuccses) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: CustomBookItem( imageurl:  state.books[index].volumeInfo.imageLinks.thumbnail),
                );
              },
            ),
          );
        } else if (state is BookItemFailure) {
          return FailureErrorMessage(errormassage: state.errormassage);
        } else{
           
            return const LoadingIndicator();
        }
      },
    );
  }
}
