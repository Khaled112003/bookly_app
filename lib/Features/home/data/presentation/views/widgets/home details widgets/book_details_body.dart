import 'package:bookly/core/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';

import '../home widgets/Custom_Book_Item.dart';
import '../home widgets/book_rating.dart';
import 'Book_ListView_BookDetails.dart';
import 'book_actions.dart';
import 'book_details_appbar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key,
    required this.wid, required this.bookModel,
  });
  final BookModel bookModel;

  final double wid;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
            SliverFillRemaining(
    hasScrollBody: false,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const BookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: wid * 0.18),
            child:  CustomBookItem(
              imageurl:bookModel.volumeInfo.imageLinks.thumbnail
                  ,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
           Text(
            bookModel.volumeInfo.title!,
            style:const TextStyle(
                fontFamily: "Lumanosimo",
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 3,
          ),
           Opacity(
            opacity: 0.6,
            child: Text(
              textAlign: TextAlign.center,
             bookModel.volumeInfo.authors![0],
              style:const TextStyle(
                fontFamily: "Lumanosimo",
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
           BookRating(
            avgcount:bookModel.volumeInfo.averageRating ?? 0,
            ratingcount: bookModel.volumeInfo.ratingcount ?? 0,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 30,
          ),
           BookActions( bookModel:bookModel ,),
          const Expanded(
            child: SizedBox(
              height: 50,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Text(
                  'You can also like',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        const   BookListViewForBookDetails(),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    ),
            )
          ]);
  }
}