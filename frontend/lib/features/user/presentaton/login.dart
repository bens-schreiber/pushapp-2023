import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:pushapp/features/user/application/user_provider.dart';
import 'package:pushapp/features/user/domain/api_helper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [LoginButton(), AuthenticationDisplay()])),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () async {
          await ApiHelper.login();
        },
        child: const Text("Login"));
  }
}

class AuthenticationDisplay extends ConsumerWidget {
  const AuthenticationDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return user.when(
        error: (e, s) => Text("Error: $e"),
        loading: () => const SizedBox.shrink(),
        data: (User data) => Text("User: ${data.username}"));
  }
}
