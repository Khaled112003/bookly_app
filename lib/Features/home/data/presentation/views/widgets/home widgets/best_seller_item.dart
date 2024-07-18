import 'package:bookly/Features/home/data/data/mobels/book_model/book_model.dart';
import 'package:bookly/Features/home/data/presentation/views/widgets/home%20widgets/Custom_Book_Item.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BestSallerItem extends StatelessWidget {
  const BestSallerItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/bookdetails', extra: bookModel);
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            CustomBookItem(imageurl: bookModel.volumeInfo.imageLinks.thumbnail),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.60,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontFamily: "Lumanosimo",
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Free",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      BookRating(
                        avgcount: bookModel.volumeInfo.averageRating ?? 0,
                        ratingcount: bookModel.volumeInfo.ratingcount ?? 0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.0,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
