// import 'package:dio/dio.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:openapi/openapi.dart';
// import 'package:pushapp/constants/consts.dart';

// final _api = Openapi(interceptors: [
//   LogInterceptor(responseBody: true),
// ], dio: Dio(BaseOptions(baseUrl: serverAddress)));

// final _googleSignIn = GoogleSignIn(
//     scopes: ["email"],
//     clientId: googleIOSOAuthClientId,
//     serverClientId: googleOAuthServerClientId);

// abstract class ApiHelper {
//   static Future<void> login() async {
//     final googleUser = await _googleSignIn.signIn();
//     final a = await googleUser!.authentication;
//     final b = (await googleUser.authHeaders);
//     final authHeaders = b["Authorization"]!;
//     final token = authHeaders.split(" ")[1];
//     _api.setBearerAuth("", token);

//     final user = await _api.getUserApi().userList();
//     print(user.data);
//   }
// }
