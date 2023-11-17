import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pushapp/features/user/application/user_provider.dart';
import 'package:pushapp/features/user/domain/api_helper.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [AuthenticationDetails(), LogoutButton()],
      )),
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ApiHelper.logout();
      },
      child: const Text('Logout'),
    );
  }
}

class AuthenticationDetails extends ConsumerWidget {
  const AuthenticationDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return user.when(
        error: (error, stackTrace) {
          return Text(error.toString());
        },
        loading: () => const SizedBox.shrink(),
        data: (data) => Text(data?.username ?? " "));
  }
}
