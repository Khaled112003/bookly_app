import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const 
    Row(
      children: [
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
