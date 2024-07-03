import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      IconButton(onPressed: (){}, icon: Icon ( Icons.close) ),  
       IconButton(onPressed: (){}, icon: Icon ( CupertinoIcons.cart) )
    ],);
  }
}