import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
          .copyWith(scaffoldBackgroundColor: Color.fromARGB(82, 60, 13, 131),
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
          ),
          
      home: splashview(),
    );
  }
}
