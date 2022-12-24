// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'jwt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JWT _$JWTFromJson(Map<String, dynamic> json) {
  return _JWT.fromJson(json);
}

/// @nodoc
mixin _$JWT {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JWTCopyWith<JWT> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JWTCopyWith<$Res> {
  factory $JWTCopyWith(JWT value, $Res Function(JWT) then) =
      _$JWTCopyWithImpl<$Res, JWT>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$JWTCopyWithImpl<$Res, $Val extends JWT> implements $JWTCopyWith<$Res> {
  _$JWTCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JWTCopyWith<$Res> implements $JWTCopyWith<$Res> {
  factory _$$_JWTCopyWith(_$_JWT value, $Res Function(_$_JWT) then) =
      __$$_JWTCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$_JWTCopyWithImpl<$Res> extends _$JWTCopyWithImpl<$Res, _$_JWT>
    implements _$$_JWTCopyWith<$Res> {
  __$$_JWTCopyWithImpl(_$_JWT _value, $Res Function(_$_JWT) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_JWT(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JWT extends _JWT {
  _$_JWT({required this.accessToken, required this.refreshToken}) : super._();

  factory _$_JWT.fromJson(Map<String, dynamic> json) => _$$_JWTFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'JWT(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JWT &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JWTCopyWith<_$_JWT> get copyWith =>
      __$$_JWTCopyWithImpl<_$_JWT>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JWTToJson(
      this,
    );
  }
}

abstract class _JWT extends JWT {
  factory _JWT(
      {required final String accessToken,
      required final String refreshToken}) = _$_JWT;
  _JWT._() : super._();

  factory _JWT.fromJson(Map<String, dynamic> json) = _$_JWT.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_JWTCopyWith<_$_JWT> get copyWith => throw _privateConstructorUsedError;
}
