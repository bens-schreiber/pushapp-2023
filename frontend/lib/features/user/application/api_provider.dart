import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pushapp/constants/consts.dart';
import 'package:pushapp/openapi/generated/lib/api.dart';

final apiProvider = Provider((ref) =>
    ApiClient(basePath: serverAddress, authentication: HttpBearerAuth()));
