import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:openapi/openapi.dart';
import 'package:pushapp/api.dart';
import 'package:pushapp/consts.dart';
import 'package:pushapp/util/log/log.dart';

part 'user_helper_impl.dart';

/*
  A stream of authenticated users. An empty stream indicates no user has
  attempted login, null indicates a user was logged out, and a user object
  indicates a user is logged in.
*/
final _userStream = StreamController<User?>.broadcast();

class UserHelper {
  Future<User?> get user async => await _userStream.stream.first;
  Stream<User?> get userStream => _userStream.stream;

  Future<void> login() async {
    try {
      await _loginImpl();
    } catch (e) {
      DebugLog().logError(e);
      await logout();
      _userStream.sink.addError(e);
    }
  }

  Future<void> logout() async {
    await _googleSignIn.signOut();
    ApiHelper().clearBearerAuthToken();
    _userStream.sink.add(null);
  }
}
