import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UserApi
void main() {
  final instance = Openapi().getUserApi();

  group(UserApi, () {
    // Get the current user
    //
    //Future<User> userList() async
    test('test userList', () async {
      // TODO
    });

  });
}
