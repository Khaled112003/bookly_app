import 'package:flutter/cupertino.dart';

import '../home widgets/Custom_Book_Item.dart';

class BookListViewForBookDetails extends StatelessWidget {
  const BookListViewForBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: CustomBookItem(),
          );
        },
      ),
    );
  }
}
