import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for GroupApi
void main() {
  final instance = Openapi().getGroupApi();

  group(GroupApi, () {
    // Create a group for the current user, put the user into the group, and create a token for the group
    //
    //Future<Group> groupCreate() async
    test('test groupCreate', () async {
      // TODO
    });

    // Delete the group of the current user
    //
    //Future groupDelete() async
    test('test groupDelete', () async {
      // TODO
    });

    // Get the group of the current user
    //
    //Future<BuiltList<Group>> groupList() async
    test('test groupList', () async {
      // TODO
    });

    // Add a user to the group of the current user
    //
    //Future<UserxGroup> groupUserCreate(UserxGroup data) async
    test('test groupUserCreate', () async {
      // TODO
    });

  });
}
