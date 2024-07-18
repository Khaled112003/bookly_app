import 'package:flutter/cupertino.dart';

import '../home widgets/Custom_Book_Item.dart';
import '../home widgets/book_rating.dart';
import 'Book_ListView_BookDetails.dart';
import 'book_actions.dart';
import 'book_details_appbar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key,
    required this.wid,
  });

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
            child: const CustomBookItem(
              imageurl:
                  'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg',
            ),
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
            avgcount: 12,ratingcount: 2,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 30,
          ),
          const BookActions(),
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
          const BookListViewForBookDetails(),
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