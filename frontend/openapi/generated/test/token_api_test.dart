import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for TokenApi
void main() {
  final instance = Openapi().getTokenApi();

  group(TokenApi, () {
    // Get all tokens of the current user
    //
    //Future<BuiltList<Token>> tokenList() async
    test('test tokenList', () async {
      // TODO
    });

    // Update the tokens value by 1, and select a new token holder
    //
    //Future<BuiltList<Token>> tokenPartialUpdate() async
    test('test tokenPartialUpdate', () async {
      // TODO
    });

  });
}
