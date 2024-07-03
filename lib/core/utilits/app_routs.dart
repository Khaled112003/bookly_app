import 'package:bookly/Features/home/data/presentation/views/home.dart';
import 'package:bookly/Features/home/data/presentation/views/widgets/home%20details%20widgets/book_details.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>const splashview(),
    ),
    GoRoute(
      path: '/homepage',
      builder: (context, state) =>const homePage(),
    ),
     GoRoute(
      path: '/bookdetails',
      builder: (context, state) =>const BookDetails(),
    ),
  ],
);
