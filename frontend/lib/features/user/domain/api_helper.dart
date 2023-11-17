import 'dart:async';

import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:openapi/openapi.dart';
import 'package:pushapp/constants/consts.dart';
import 'package:pushapp/log/log.dart';

part "login.dart";

/*
  Swagger generated API client. Utilizes the dio package for http requests.
  All requests flow through this object.
*/
final _api =
    Openapi(interceptors: [], dio: Dio(BaseOptions(baseUrl: kServerAddress)));

abstract class ApiHelper {
  /*
    A stream of authenticated users. An empty stream indicates no user has
    attempted login, null indicates a user was logged out, and a user object
    indicates a user is logged in.
  */
  static final _userStream = StreamController<User?>.broadcast();

  // Log a user into the app, add authentication headers to all requests
  // Update authenticated user in user stream
  static Future<void> login() async {
    try {
      await _loginImpl();
    } catch (e) {
      DebugLog.logError(e);
      _userStream.sink.addError(e);
    }
  }

  // Sign a user out of the app, remove authentication headers from all requests
  // Update authenticated user to null in user stream
  static Future<void> logout() async {
    await _googleSignIn.signOut();
    _api.dio.options.headers.remove("Authorization");
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
