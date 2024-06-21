import 'package:bookly/Features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class splashview extends StatelessWidget {
  const splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: splashviewbody(),
    );
  }
}