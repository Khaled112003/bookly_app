// ignore: file_names


import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageurl});
 final String imageurl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3.1,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageurl),
          ),
        ),
      ),
    );
  }
}
