//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'userx_group.g.dart';

/// UserxGroup
///
/// Properties:
/// * [userId] 
@BuiltValue()
abstract class UserxGroup implements Built<UserxGroup, UserxGroupBuilder> {
  @BuiltValueField(wireName: r'user_id')
  int get userId;

  UserxGroup._();

  factory UserxGroup([void updates(UserxGroupBuilder b)]) = _$UserxGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserxGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserxGroup> get serializer => _$UserxGroupSerializer();
}

class _$UserxGroupSerializer implements PrimitiveSerializer<UserxGroup> {
  @override
  final Iterable<Type> types = const [UserxGroup, _$UserxGroup];

  @override
  final String wireName = r'UserxGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserxGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'user_id';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserxGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserxGroupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserxGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserxGroupBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

