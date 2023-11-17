part of "api_helper.dart";

/*
  Uses the google_sign_in package to obtain a google auth token.
  clientId and serverClientId are OAuth2 credentials.
*/
final _googleSignIn = GoogleSignIn(
    scopes: ["email"],
    clientId: kGoogleIOSOAuthClientId,
    serverClientId: kGoogleOAuthServerClientId);

// Attempt to log a user in.
Future<void> _loginImpl() async {
  // Gather google access token
  final googleAccessToken = await _handleGoogleSignIn();

  // Gather PushApp server access token
  final accessToken = await _handleServerSignIn(googleAccessToken);

  // Set authorization header for all requests
  // "Authorization": "Bearer $accessToken"
  _api.dio.options.headers["Authorization"] = accessToken;

  // Query the logged in user
  final user = await _handleObtainUser();

  // Update the user stream with the authenticated user
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
