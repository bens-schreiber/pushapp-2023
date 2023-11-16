part of "api_helper.dart";

final _googleSignIn = GoogleSignIn(
    scopes: ["email"],
    clientId: googleIOSOAuthClientId,
    serverClientId: googleOAuthServerClientId);

// Return a google auth token via google sign in prompt
Future<String> handleGoogleSignIn() async {
  GoogleSignInAccount? account;
  try {
    account = await _googleSignIn.signIn();
  } finally {
    if (account == null) {
      throw Exception("Google sign in failed");
    }
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
Future<String> handleServerSignIn(String googleAuthToken) async {
  final data = GoogleView((b) => b..token = googleAuthToken);

  Response<UserToken?>? response;
  try {
    response = await _api.getGoogleApi().googleCreate(data: data);
  } finally {
    if (response == null || response.data == null) {
      throw Exception("Server sign in failed: No response");
    }
    if (response.statusCode != 200) {
      throw Exception("Server sign in failed: ${response.statusCode}");
    }
  }

  final accessToken = response.data!.accessToken;
  return "Bearer $accessToken";
}

// Return a user object from the server user endpoint
Future<User> handleObtainUser() async {
  Response<User?>? user;
  try {
    user = await _api.getUserApi().userList();
  } finally {
    if (user == null || user.data == null) {
      throw Exception("Server sign in failed: No response");
    }
    if (user.statusCode != 200) {
      throw Exception("Server sign in failed: ${user.statusCode}");
    }
  }
  return user.data!;
}
