import 'package:bookly/Features/home/data/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/cupertino.dart';

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