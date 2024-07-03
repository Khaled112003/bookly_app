
import 'package:bookly/core/utilits/app_routs.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const booklyapp());
}

class booklyapp extends StatelessWidget {
  const booklyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig:router ,
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: Color.fromARGB(82, 60, 13, 131),
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
          ),
          
     
    );
  }
}
