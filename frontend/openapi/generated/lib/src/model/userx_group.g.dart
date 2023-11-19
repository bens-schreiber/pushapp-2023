// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userx_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserxGroup extends UserxGroup {
  @override
  final int userId;

  factory _$UserxGroup([void Function(UserxGroupBuilder)? updates]) =>
      (new UserxGroupBuilder()..update(updates))._build();

  _$UserxGroup._({required this.userId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, r'UserxGroup', 'userId');
  }

  @override
  UserxGroup rebuild(void Function(UserxGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserxGroupBuilder toBuilder() => new UserxGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserxGroup && userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserxGroup')..add('userId', userId))
        .toString();
  }
}

class UserxGroupBuilder implements Builder<UserxGroup, UserxGroupBuilder> {
  _$UserxGroup? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  UserxGroupBuilder() {
    UserxGroup._defaults(this);
  }

  UserxGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserxGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserxGroup;
  }

  @override
  void update(void Function(UserxGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserxGroup build() => _build();

  _$UserxGroup _build() {
    final _$result = _$v ??
        new _$UserxGroup._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'UserxGroup', 'userId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
