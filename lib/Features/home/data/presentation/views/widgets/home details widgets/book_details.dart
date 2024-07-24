import 'package:bookly/core/book_model/book_model.dart';
import 'package:bookly/Features/home/data/presentation/manger/similarbookitem/fetchsimilairbookitem_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_details_body.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  void initState() {
    BlocProvider.of<FetchsimilairbookitemCubit>(context).fetchSimilairbookitem(
        categery: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(body: BookDetailsBody(wid: wid, bookModel:widget.bookModel ,)),
    );
  }
}
