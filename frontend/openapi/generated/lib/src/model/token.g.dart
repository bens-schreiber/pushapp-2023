// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Token extends Token {
  @override
  final int? id;
  @override
  final int? score;
  @override
  final String group;
  @override
  final int holder;

  factory _$Token([void Function(TokenBuilder)? updates]) =>
      (new TokenBuilder()..update(updates))._build();

  _$Token._({this.id, this.score, required this.group, required this.holder})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(group, r'Token', 'group');
    BuiltValueNullFieldError.checkNotNull(holder, r'Token', 'holder');
  }

  @override
  Token rebuild(void Function(TokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenBuilder toBuilder() => new TokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Token &&
        id == other.id &&
        score == other.score &&
        group == other.group &&
        holder == other.holder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, holder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Token')
          ..add('id', id)
          ..add('score', score)
          ..add('group', group)
          ..add('holder', holder))
        .toString();
  }
}

class TokenBuilder implements Builder<Token, TokenBuilder> {
  _$Token? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  String? _group;
  String? get group => _$this._group;
  set group(String? group) => _$this._group = group;

  int? _holder;
  int? get holder => _$this._holder;
  set holder(int? holder) => _$this._holder = holder;

  TokenBuilder() {
    Token._defaults(this);
  }

  TokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _score = $v.score;
      _group = $v.group;
      _holder = $v.holder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Token other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Token;
  }

  @override
  void update(void Function(TokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Token build() => _build();

  _$Token _build() {
    final _$result = _$v ??
        new _$Token._(
            id: id,
            score: score,
            group:
                BuiltValueNullFieldError.checkNotNull(group, r'Token', 'group'),
            holder: BuiltValueNullFieldError.checkNotNull(
                holder, r'Token', 'holder'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
