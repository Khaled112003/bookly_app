import 'package:bookly/core/utilits/assets.dart';
import 'package:flutter/material.dart';

class splashviewbody extends StatelessWidget {
  const splashviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(assetsdata.logo)
      ],

    );
  }
}