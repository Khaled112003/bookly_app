import 'package:bookly/Features/home/data/data/mobels/book_model/book_model.dart';
import 'package:bookly/Features/home/data/data/repos/home_repo_implementation.dart';
import 'package:bookly/Features/home/data/presentation/manger/similarbookitem/fetchsimilairbookitem_cubit.dart';
import 'package:bookly/Features/home/data/presentation/views/home.dart';
import 'package:bookly/Features/home/data/presentation/views/widgets/home%20details%20widgets/book_details.dart';
import 'package:bookly/Features/search/data/presentation/view/search_page.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly/core/setup.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const splashview(),
    ),
    GoRoute(
      path: '/homepage',
      builder: (context, state) => const homePage(),
    ),
    GoRoute(
      path: '/bookdetails',
      builder: (context, state) => BlocProvider(
        create: (context) => FetchsimilairbookitemCubit(getIt.get<HomeRepoImplementation>()),
        child:  BookDetails(bookModel: state.extra as BookModel,),
      ),
    ),
    GoRoute(
      path: '/SearchBage',
      builder: (context, state) => const SearchBage(),
    ),
  ],
);
