import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pushapp/feature/user/application/user_provider.dart';
import 'package:pushapp/feature/user/domain/user_helper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginButton(),
            AuthenticationErrorDisplay(),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          await UserHelper().login();
        },
        child: const Text("Login"));
  }
}

class AuthenticationErrorDisplay extends ConsumerWidget {
  const AuthenticationErrorDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return user.when(
        error: (error, stackTrace) {
          return Text(error.toString());
        },
        loading: () => const SizedBox.shrink(),
        data: (_) => const SizedBox.shrink());
  }
}
