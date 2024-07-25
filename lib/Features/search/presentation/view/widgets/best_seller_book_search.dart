import 'package:bookly/Features/home/data/presentation/views/widgets/home%20widgets/best_seller_item.dart';
import 'package:bookly/Features/search/presentation/manger/searchbbook/searchbook_cubit.dart';
import 'package:bookly/core/widgets/failure_error_massege.dart';
import 'package:bookly/core/widgets/loading.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerBooksSearch extends StatelessWidget {
  const BestSellerBooksSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchbookCubit, SearchbookState>(
      builder: (context, state) {
        if (state is Searchbooksuccses) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: BestSallerItem(bookModel: state.books[index])
              );
            },
          );
        } else if (state is Searchbookfailure) {
          return FailureErrorMessage(errormassage: 'Sorry, There is no search by this name ',);
          
        }else if(state is Searchbookloading){
          return LoadingIndicator();
        }
         else {
          return const Icon(Icons.search, color: Colors.grey, size: 95,);
        }
      },
    );
  }
}
