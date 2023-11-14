import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:openapi/openapi.dart';
import 'package:pushapp/constants/consts.dart';

final _api =
    Openapi(interceptors: [], dio: Dio(BaseOptions(baseUrl: serverAddress)));

final _googleSignIn = GoogleSignIn(
    scopes: ["email"],
    clientId: googleIOSOAuthClientId,
    serverClientId: googleOAuthServerClientId);

abstract class ApiHelper {
  static Future<void> login() async {
    final googleUser = await _googleSignIn.signIn();
    final token =
        (await googleUser!.authHeaders)["Authorization"]!.split(" ")[1];

    final data = GoogleView((b) => b..token = token);

    final accessToken = await _api.getGoogleApi().googleCreate(data: data);

    _api.dio.options.headers["Authorization"] =
        "Bearer ${accessToken.data!.accessToken}";

    final a = _api.dio;

    final user = await _api.getUserApi().userList();
    print(user.data);
  }
}
