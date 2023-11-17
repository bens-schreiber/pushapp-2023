import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pushapp/feature/user/data/user_status_listener.dart';
import 'package:pushapp/routes/go_router.dart';

void main() {
  // Register all listeners here
  final listeners = [
    UserStatusListener(),
  ];
  for (var element in listeners) {
    element.register();
  }

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "PushApp",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: AppRouter.router);
  }
}
