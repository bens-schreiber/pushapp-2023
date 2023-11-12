import 'package:google_sign_in/google_sign_in.dart';
import 'package:pushapp/constants/consts.dart';

final _googleSignIn = GoogleSignIn(
    scopes: ["email"],
    clientId: googleIOSOAuthClientId,
    serverClientId: googleOAuthServerClientId);

class ApiHelper {
  static Future<void> login() async {
    await _googleSignIn.signIn();
  }
}
