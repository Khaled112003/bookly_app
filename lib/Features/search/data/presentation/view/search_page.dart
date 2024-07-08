import 'package:bookly/Features/search/data/presentation/view/widgets/search_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBage extends StatelessWidget {
  const SearchBage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SearchTextField()
      ],),
    );
  }
}