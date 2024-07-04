import 'package:bookly/Features/home/data/presentation/views/widgets/home%20details%20widgets/book_actions.dart';
import 'package:bookly/Features/home/data/presentation/views/widgets/home%20details%20widgets/book_listview.dart';
import 'package:bookly/Features/home/data/presentation/views/widgets/home%20widgets/Custom_Book_Item.dart';
import 'package:bookly/Features/home/data/presentation/views/widgets/home%20widgets/book_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_details_appbar.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const BookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: wid * 0.18),
                  child: const CustomBookItem(),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "the jugel book",
                  style: TextStyle(
                      fontFamily: "Lumanosimo",
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Opacity(
                  opacity: 0.6,
                  child: Text(
                    "khaled mohaseb",
                    style: TextStyle(
                      fontFamily: "Lumanosimo",
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                const BookActions(),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Text(
                        'You can also like',
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                    ],
                    
                  ),
                  
                ),
                const
                SizedBox(height: 16,),
                BookListViewForBookDetails(),
                SizedBox(height: 40,),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}