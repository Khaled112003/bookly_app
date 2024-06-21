import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const booklyapp());
}

class booklyapp extends StatelessWidget {
  const booklyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: Color.fromARGB(86, 17, 2, 56)),
      home: splashview(),
    );
  }
}
