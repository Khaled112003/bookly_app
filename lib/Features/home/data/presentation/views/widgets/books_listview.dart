import 'package:bookly/Features/home/data/presentation/views/widgets/custom_listviewitem.dart';
import 'package:flutter/cupertino.dart';

class booksListveiw extends StatelessWidget {
  const booksListveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height*0.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, 
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: customListviewItem(),
        );
      },),
    );
  }
}