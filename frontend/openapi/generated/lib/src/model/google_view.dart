//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'google_view.g.dart';

/// GoogleView
///
/// Properties:
/// * [token] 
@BuiltValue()
abstract class GoogleView implements Built<GoogleView, GoogleViewBuilder> {
  @BuiltValueField(wireName: r'token')
  String get token;

  GoogleView._();

  factory GoogleView([void updates(GoogleViewBuilder b)]) = _$GoogleView;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GoogleViewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GoogleView> get serializer => _$GoogleViewSerializer();
}

class _$GoogleViewSerializer implements PrimitiveSerializer<GoogleView> {
  @override
  final Iterable<Type> types = const [GoogleView, _$GoogleView];

  @override
  final String wireName = r'GoogleView';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GoogleView object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GoogleView object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GoogleViewBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GoogleView deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GoogleViewBuilder();
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

