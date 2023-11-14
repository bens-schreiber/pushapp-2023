import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for GoogleApi
void main() {
  final instance = Openapi().getGoogleApi();

  group(GoogleApi, () {
    //Future<GoogleView> googleCreate(GoogleView data) async
    test('test googleCreate', () async {
      // TODO
    });

  });
}
