import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {
         GoRouter.of(context).go('/homepage');
        }, icon: Icon(Icons.close)),
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.cart))
      ],
    );
  }
}
