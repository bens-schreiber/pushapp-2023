// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GoogleView extends GoogleView {
  @override
  final String token;

  factory _$GoogleView([void Function(GoogleViewBuilder)? updates]) =>
      (new GoogleViewBuilder()..update(updates))._build();

  _$GoogleView._({required this.token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(token, r'GoogleView', 'token');
  }

  @override
  GoogleView rebuild(void Function(GoogleViewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoogleViewBuilder toBuilder() => new GoogleViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoogleView && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GoogleView')..add('token', token))
        .toString();
  }
}

class GoogleViewBuilder implements Builder<GoogleView, GoogleViewBuilder> {
  _$GoogleView? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GoogleViewBuilder() {
    GoogleView._defaults(this);
  }

  GoogleViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoogleView other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GoogleView;
  }

  @override
  void update(void Function(GoogleViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GoogleView build() => _build();

  _$GoogleView _build() {
    final _$result = _$v ??
        new _$GoogleView._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'GoogleView', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
