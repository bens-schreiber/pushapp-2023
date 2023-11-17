import 'dart:async';

import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:openapi/openapi.dart';
import 'package:pushapp/constants/consts.dart';
import 'package:pushapp/log/log.dart';

part "login.dart";

final _api =
    Openapi(interceptors: [], dio: Dio(BaseOptions(baseUrl: serverAddress)));

abstract class ApiHelper {
  static final _userStream = StreamController<User?>.broadcast();

  static Future<void> login() async {
    try {
      await _loginImpl();
    } catch (e) {
      DebugLog.logError(e);
      _userStream.sink.addError(e);
    }
  }

  static Future<void> logout() async {
    await _googleSignIn.signOut();
    _userStream.sink.add(null);
  }

  static Future<User?> user() async {
    if (await _userStream.stream.isEmpty) {
      await login();
    }
    return _userStream.stream.first;
  }

  static Stream<User?> userStream() {
    return _userStream.stream;
  }
}
