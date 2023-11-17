part of "api_helper.dart";

final _googleSignIn = GoogleSignIn(
    scopes: ["email"],
    clientId: googleIOSOAuthClientId,
    serverClientId: googleOAuthServerClientId);

Future<void> _loginImpl() async {
  final googleAuthToken = await _handleGoogleSignIn();

  final accessToken = await _handleServerSignIn(googleAuthToken);

  // Set authorization header for all requests
  _api.dio.options.headers["Authorization"] = accessToken;

  final user = await _handleObtainUser();
  ApiHelper._userStream.sink.add(user);
}

// Return a google auth token via google sign in prompt
Future<String> _handleGoogleSignIn() async {
  final account = await _googleSignIn.signIn();

  if (account == null) {
    throw Exception("Google sign in failed");
  }

  final authHeaders = (await account.authHeaders)["Authorization"];
  if (authHeaders == null) {
    throw Exception("Google sign in failed: Authorization headers not found");
  }

  final token = authHeaders.split(" ")[1];
  if (token.isEmpty) {
    throw Exception("Google sign in failed: Token is empty");
  }
  return token;
}

// Returns a user sign in token via server
Future<String> _handleServerSignIn(String googleAuthToken) async {
  final data = GoogleView((b) => b..token = googleAuthToken);

  final response = await _api.getGoogleApi().googleCreate(data: data);

  if (response.data == null) {
    throw Exception("Server sign in failed: No response");
  }
  if (response.statusCode != 200) {
    throw Exception("Server sign in failed: ${response.statusCode}");
  }

  final accessToken = response.data!.accessToken;
  return "Bearer $accessToken";
}

// Return a user object from the server
Future<User> _handleObtainUser() async {
  final user = await _api.getUserApi().userList();
  if (user.statusCode != 200) {
    throw Exception("Server sign in failed: ${user.statusCode}");
  }
  if (user.data == null) {
    throw Exception("Server sign in failed: No response");
  }
  return user.data!;
}
