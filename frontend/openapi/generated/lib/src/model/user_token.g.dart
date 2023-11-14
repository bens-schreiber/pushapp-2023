// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserToken extends UserToken {
  @override
  final String username;
  @override
  final String accessToken;
  @override
  final String refreshToken;

  factory _$UserToken([void Function(UserTokenBuilder)? updates]) =>
      (new UserTokenBuilder()..update(updates))._build();

  _$UserToken._(
      {required this.username,
      required this.accessToken,
      required this.refreshToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(username, r'UserToken', 'username');
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'UserToken', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'UserToken', 'refreshToken');
  }

  @override
  UserToken rebuild(void Function(UserTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserTokenBuilder toBuilder() => new UserTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserToken &&
        username == other.username &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserToken')
          ..add('username', username)
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class UserTokenBuilder implements Builder<UserToken, UserTokenBuilder> {
  _$UserToken? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  UserTokenBuilder() {
    UserToken._defaults(this);
  }

  UserTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserToken;
  }

  @override
  void update(void Function(UserTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserToken build() => _build();

  _$UserToken _build() {
    final _$result = _$v ??
        new _$UserToken._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'UserToken', 'username'),
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'UserToken', 'accessToken'),
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, r'UserToken', 'refreshToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
