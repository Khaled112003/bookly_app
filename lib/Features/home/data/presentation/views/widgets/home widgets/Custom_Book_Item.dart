// ignore: file_names

import 'package:bookly/core/widgets/loading.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageurl});
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2 / 3.1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: '',
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            placeholder: (context, url) => const LoadingIndicator()
            ),
          ),
        );
  }
}
