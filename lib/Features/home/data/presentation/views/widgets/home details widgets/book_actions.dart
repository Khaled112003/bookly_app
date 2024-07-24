import 'package:bookly/core/book_model/book_model.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
         const Expanded(
              child: CustomButton(
            radius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
            text: "Free",
            colortext: Colors.black,
            backgroundcolor: Colors.white,
          )),
          Expanded(
              child: CustomButton(
                onPressed: ()async {
                  Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
                  if (await canLaunchUrl(uri)) {
                  await  launchUrl(uri);

    
  }
                  
                },
                  radius:const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  text: "preview",
                  colortext:const Color.fromARGB(255, 255, 254, 253),
                  backgroundcolor:const Color.fromARGB(255, 255, 148, 124))),
        ],
      ),
    );
  }
}
