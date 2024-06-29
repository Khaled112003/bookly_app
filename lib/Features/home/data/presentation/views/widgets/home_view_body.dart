import 'package:bookly/core/utilits/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homeViewBody extends StatelessWidget {
  const homeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only( left: 10,right: 10,top: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetsdata.logo,height: 22,),
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search,size: 25,))
            ],
          ),
        )
      ],
    ));
  }
}
