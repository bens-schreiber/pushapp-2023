import 'package:flutter/material.dart';
import 'package:pushapp/features/user/domain/api_helper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
              onPressed: () async {
                await ApiHelper.login();
              },
              child: const Text("Login"))),
    );
  }
}
