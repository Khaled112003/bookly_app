import 'package:flutter/cupertino.dart';

import 'Custom_Book_Item.dart';

class booksListveiw extends StatelessWidget {
  const booksListveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
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
