import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:pushapp/feature/user/domain/user_helper.dart';

final userProvider = StreamProvider<User?>((ref) => UserHelper().userStream);
