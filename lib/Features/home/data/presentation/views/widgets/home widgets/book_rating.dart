import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start, required this.ratingcount, required this.avgcount,
  }) : super(key: key);

  final MainAxisAlignment mainAxisAlignment;
  final int ratingcount ;
  final dynamic avgcount ;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
       const Icon(
          CupertinoIcons.star_fill,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(avgcount.toString(),
          
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
       const SizedBox(
          width: 3,
        ),
        Text(
         ("( ${ratingcount.toString()})"),
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
