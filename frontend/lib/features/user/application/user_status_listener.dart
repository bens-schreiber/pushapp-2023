import 'dart:async';

import 'package:openapi/openapi.dart';
import 'package:pushapp/features/user/domain/api_helper.dart';
import 'package:pushapp/routes/go_router.dart';
import 'package:pushapp/routes/routes.dart';
import 'package:pushapp/util/listener.dart';

// ignore: unused_element
StreamSubscription<User?>? _userStatusListener;

class UserStatusListener extends Listener {
  @override
  void register() {
    _userStatusListener = ApiHelper.userStream().listen((event) {
      if (event == null) {
        AppRouter.router.go(AppRoute.login);
        return;
      }
      AppRouter.router.go(AppRoute.home);
    });
  }
}
