import 'dart:async';

import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:openapi/openapi.dart';
import 'package:pushapp/constants/consts.dart';

part "login.dart";

final _api =
    Openapi(interceptors: [], dio: Dio(BaseOptions(baseUrl: serverAddress)));

abstract class ApiHelper {
  static final _userStream = StreamController<User>.broadcast();

  static Future<void> login() async {
    final googleAuthToken = await handleGoogleSignIn();

    final accessToken = await handleServerSignIn(googleAuthToken);

    // Set authorization header for all requests
    _api.dio.options.headers["Authorization"] = accessToken;

    final user = await handleObtainUser();
    _userStream.sink.add(user);
  }

  static Future<User> user() async {
    if (await _userStream.stream.isEmpty) {
      await login();
    }
    return _userStream.stream.first;
  }

  static Stream<User> userStream() {
    return _userStream.stream;
  }
}
