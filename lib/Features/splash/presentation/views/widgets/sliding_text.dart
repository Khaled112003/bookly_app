import 'package:bookly/Features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class slidingText extends StatelessWidget {
  const slidingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation:SlidingTextAnimtion,
      builder: (context, _) {
        return  SlideTransition(
        position:SlidingTextAnimtion ,
        child: const Text(
          "Read Free Books",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      );
      }
        
      
      
    );
  }
}
