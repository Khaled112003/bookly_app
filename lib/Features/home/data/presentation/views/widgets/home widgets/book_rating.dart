import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:const [
        Icon(
          CupertinoIcons.star_fill,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          '2.8',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          '(252)',
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}