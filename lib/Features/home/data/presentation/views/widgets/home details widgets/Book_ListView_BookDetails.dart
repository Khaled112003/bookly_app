import 'package:flutter/cupertino.dart';

import '../home widgets/Custom_Book_Item.dart';

class BookListViewForBookDetails extends StatelessWidget {
  const BookListViewForBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: CustomBookItem(imageurl: 'https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg',),
          );
        },
      ),
    );
  }
}
