// ignore: implementation_imports
import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';
import 'package:pushapp/consts.dart';

/*
  Swagger generated API client. Utilizes the dio package for http requests.
  All requests flow through this object.
*/
final _api = Openapi(dio: Dio(BaseOptions(baseUrl: kServerAddress)));

class ApiHelper {
  Openapi get api => _api;
  GoogleApi get googleApi => _api.getGoogleApi();
  UserApi get userApi => _api.getUserApi();

  void setBearerAuthToken(String token) {
    _api.dio.options.headers[kAuthHeader] = "Bearer $token";
  }

  void clearBearerAuthToken() {
    _api.dio.options.headers.remove(kAuthHeader);
  }
}
