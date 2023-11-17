import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushapp/features/token/presentation/home.dart';
import 'package:pushapp/features/user/presentaton/login.dart';
import 'package:pushapp/routes/routes.dart';

final _routes = [
  GoRoute(
    path: '/',
    redirect: (context, state) => routeLoginPage,
  ),
  GoRoute(
    path: routeLoginPage,
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: routeHomePage,
    builder: (context, state) => const Home(),
  ),
];

abstract class AppRouter {
  static final rootNavigationKey = GlobalKey<NavigatorState>();

  static final router =
      GoRouter(routes: _routes, navigatorKey: rootNavigationKey);
}
