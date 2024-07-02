import 'package:bookly/Features/home/data/presentation/views/widgets/books_listview.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'best_seller_item.dart';
import 'custom_appbar.dart';

class homeViewBody extends StatelessWidget {
  const homeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customAppBar(),
          booksListveiw(),
          SizedBox(
            height: 40,
          ),
          Text(
            'Best Seller',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 30,),
          BestSallerItem()
        ],
      ),
    );
  }
}
