import 'package:flutter/material.dart';

class FailureErrorMessage extends StatelessWidget {
  const FailureErrorMessage({super.key, required this.errormassage});
  final String errormassage;

  @override
  Widget build(BuildContext context) {
    return Text(errormassage ,style:const TextStyle(fontSize: 18),);
  }
}