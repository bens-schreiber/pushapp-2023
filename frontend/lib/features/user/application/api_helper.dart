import 'package:google_sign_in/google_sign_in.dart';
import 'package:pushapp/constants/consts.dart';

final _googleSignIn = GoogleSignIn(
    scopes: ["email"],
    clientId: googleIOSOAuthClientId,
    serverClientId: googleOAuthServerClientId);

abstract class ApiHelper {
  static Future<void> login() async {
    final googleUser = await _googleSignIn.signIn();
    final authHeaders = (await googleUser!.authHeaders)["Authorization"]!;
  }
}
