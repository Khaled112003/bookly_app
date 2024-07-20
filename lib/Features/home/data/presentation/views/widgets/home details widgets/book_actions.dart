import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            radius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
            text: "Free",
            colortext: Colors.black,
            backgroundcolor: Colors.white,
          )),
          Expanded(
              child: CustomButton(
                  radius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  text: "preview",
                  colortext: Color.fromARGB(255, 255, 254, 253),
                  backgroundcolor: Color.fromARGB(255, 255, 148, 124))),
        ],
      ),
    );
  }
}
