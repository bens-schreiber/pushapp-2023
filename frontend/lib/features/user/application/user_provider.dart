import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:pushapp/features/user/domain/api_helper.dart';

final userProvider = StreamProvider<User?>((ref) => ApiHelper.userStream());
