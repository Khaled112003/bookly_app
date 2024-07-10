import 'package:bookly/Features/search/data/presentation/view/widgets/best_seller_book_search.dart';
import 'package:bookly/Features/search/data/presentation/view/widgets/search_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchBage extends StatelessWidget {
  const SearchBage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SearchTextField(),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Best Seller',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BestSellerBooksSearch()
          ],
        ),
      ),
    );
  }
}
