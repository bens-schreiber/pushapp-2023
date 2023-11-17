import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushapp/feature/token/presentation/home.dart';
import 'package:pushapp/feature/user/presentaton/login.dart';
import 'package:pushapp/routes/routes.dart';

// Define all internal routes here (AppRoute -> Widget)
final _routes = [
  GoRoute(
    path: '/',
    redirect: (context, state) => AppRoute.login,
  ),
  GoRoute(
    path: AppRoute.login,
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: AppRoute.home,
    builder: (context, state) => const Home(),
  ),
];

final _rootNavigationKey = GlobalKey<NavigatorState>();
final _router = GoRouter(routes: _routes, navigatorKey: _rootNavigationKey);

class AppRouter {
  // Root most navigation key, can change entire app context
  get rootNavigationKey => _rootNavigationKey;
  get router => _router;
}
