
import 'package:flutter/cupertino.dart';


import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
      return const Padding(
        padding:  EdgeInsets.symmetric(vertical: 10),
        child: BestSallerItem(),
      );
    },);
  }
}