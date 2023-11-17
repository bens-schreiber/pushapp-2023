part of 'user_helper.dart';

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
  final googleAccessToken = await _handleGoogleSignIn();

  final accessToken = await _handleServerSignIn(googleAccessToken);

  ApiHelper().setBearerAuthToken(accessToken);

  final user = await _handleObtainUser();

  // Update the user stream with the authenticated user
  _userStream.sink.add(user);
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

  final response = await ApiHelper().googleApi.googleCreate(data: data);

  if (response.data == null) {
    throw Exception("Server sign in failed: No response");
  }
  if (response.statusCode != 200) {
    throw Exception("Server sign in failed: ${response.statusCode}");
  }

  final accessToken = response.data!.accessToken;
  return accessToken;
}

// Return a user object from the server
Future<User> _handleObtainUser() async {
  final user = await ApiHelper().userApi.userList();
  if (user.statusCode != 200) {
    throw Exception("Server sign in failed: ${user.statusCode}");
  }
  if (user.data == null) {
    throw Exception("Server sign in failed: No response");
  }
  return user.data!;
}
