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
            child: Text(''),
          );
        },
      ),
    );
  }
}
