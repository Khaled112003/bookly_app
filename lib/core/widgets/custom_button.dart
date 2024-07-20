import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.colortext,
      required this.backgroundcolor,
      this.radius, this.onPressed});
  final String text;
  final Color colortext;
  final Color backgroundcolor;
  final BorderRadius? radius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundcolor,
            shape: RoundedRectangleBorder(
                borderRadius: radius ?? BorderRadius.circular(10))),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: colortext, fontSize: 16, fontWeight: FontWeight.bold),
        ));
  }
}
