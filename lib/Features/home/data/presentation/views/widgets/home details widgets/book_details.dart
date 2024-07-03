
import 'package:flutter/material.dart';

import 'book_details_appbar.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
        body: Column(
          children: [
            BookDetailsAppBar()
          ],
        ),
      ),
    );
  }
}
