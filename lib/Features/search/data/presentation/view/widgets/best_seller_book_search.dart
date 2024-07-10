import 'package:bookly/Features/home/data/presentation/views/widgets/home%20widgets/best_seller_item.dart';
import 'package:flutter/cupertino.dart';

class BestSellerBooksSearch extends StatelessWidget {
  const BestSellerBooksSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSallerItem(),
          );
        },
      ),
    );
  }
}
