import 'package:bookly/Features/home/data/presentation/views/widgets/custom_listviewitem.dart';
import 'package:flutter/cupertino.dart';

class booksListveiw extends StatelessWidget {
  const booksListveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return customListviewItem();
    },);
  }
}