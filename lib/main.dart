import 'package:bookly/Features/home/data/presentation/manger/book_Item/book_item_cubit.dart';
import 'package:bookly/core/setup.dart';
import 'package:bookly/core/utilits/app_routs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

import 'Features/home/data/data/repos/home_repo_implementation.dart';
import 'Features/home/data/presentation/manger/best_seller_book/best_seller_books_cubit.dart';

void main() {
  setup();
  runApp(const booklyapp());
}

class booklyapp extends StatelessWidget {
  const booklyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BestSellerBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          )..fetchBestSellerData()
        ),
        BlocProvider(
          create: (context) => BookItemCubit(
            getIt.get<HomeRepoImplementation>(),
          )..fetchBookItem()
        )
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor:const Color.fromARGB(82, 60, 13, 131),
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
