import 'package:bookly/Features/home/data/presentation/views/home.dart';
import 'package:bookly/core/utilits/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'sliding_text.dart';

class splashviewbody extends StatefulWidget {
  const splashviewbody({super.key});

  @override
  State<splashviewbody> createState() => _splashviewbodyState();
}

late AnimationController animationController;
late Animation<Offset> SlidingTextAnimtion;

class _splashviewbodyState extends State<splashviewbody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    initSlidingAnimation();
    navigateToHomePage();
  }

  

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(assetsdata.logo),
        const SizedBox(
          height: 5,
        ),
        slidingText()
      ],
    );
  }



  
  void navigateToHomePage() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(const homePage(),
          transition: Transition.leftToRight,
          duration: const Duration(microseconds: 250));
    });
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    super.initState();
    SlidingTextAnimtion = Tween(begin: Offset(0, 10), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
}
