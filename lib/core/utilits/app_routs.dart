import 'package:bookly/Features/home/data/presentation/views/home.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => splashview(),
    ),
    GoRoute(
      path: '/homepage',
      builder: (context, state) => homePage(),
    ),
  ],
);
