import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manger/searchbbook/searchbook_cubit.dart';
import 'widgets/best_seller_book_search.dart';
import 'widgets/search_textfield.dart';

class SearchBage extends StatefulWidget {
  const SearchBage();

  @override
  State<SearchBage> createState() => _SearchBageState();
}

class _SearchBageState extends State<SearchBage> {
  final TextEditingController _searchController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SearchTextField(
                controller: _searchController,
                onChanged: (value) {
                  BlocProvider.of<SearchbookCubit>(context).fetchSearchBooks(searchPoint: value);
                },
                onFieldSubmitted: (value) {
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<SearchbookCubit>(context).fetchSearchBooks(searchPoint: value);
                    _searchController.clear();
                  }
                },
              ),
              const SizedBox(height: 50),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Search Results',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              const Expanded(child: BestSellerBooksSearch()),
            ],
          ),
        ),
      ),
    );
  }
}
