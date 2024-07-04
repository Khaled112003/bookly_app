// ignore: file_names
import 'package:bookly/core/utilits/assets.dart';

import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2/3.2,
      child: Container(
        
        
        decoration:const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.red,
          
          image: DecorationImage(
            
            fit: BoxFit.fill,
            image: AssetImage(assetsdata.testImage),
          ),
        ),
      ),
    );
  }
}