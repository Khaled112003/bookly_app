import 'package:bookly/core/utilits/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customListviewItem extends StatelessWidget {
  const customListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1/2,
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