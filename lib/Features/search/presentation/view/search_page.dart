
import 'package:bookly/Features/search/presentation/manger/searchbbook/searchbook_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'widgets/best_seller_book_search.dart';
import 'widgets/search_textfield.dart';

class SearchBage extends StatefulWidget {
  const SearchBage();

  @override
  State<SearchBage> createState() => _SearchBageState();
}

class _SearchBageState extends State<SearchBage> {
  String? text;
   GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Form(
        key: formKey,
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20 , ),
          child: Column(
            children: [
              SearchTextField( onFieldSubmitted: (value) {
                if (formKey.currentState!.validate()) {
  text=value;
  setState(() {
    BlocProvider.of<SearchbookCubit>(context).fetchSearchBooks(searchPoint: text!);
  });
}
              },),
              const SizedBox(
                height: 50,
              ),
             const  Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Search Results',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            const  Expanded(child:  BestSellerBooksSearch())
            ],
          ),
        ),
      ),
    );
  }
}
