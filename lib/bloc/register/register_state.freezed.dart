// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterState {
  bool get loading => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  List<String> get interestedTags => throw _privateConstructorUsedError;
  List<String> get selectedInterestedTags => throw _privateConstructorUsedError;
  RegisterPage get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {bool loading,
      String? email,
      String? password,
      String? nickname,
      List<String> interestedTags,
      List<String> selectedInterestedTags,
      RegisterPage page});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? nickname = freezed,
    Object? interestedTags = null,
    Object? selectedInterestedTags = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      interestedTags: null == interestedTags
          ? _value.interestedTags
          : interestedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedInterestedTags: null == selectedInterestedTags
          ? _value.selectedInterestedTags
          : selectedInterestedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as RegisterPage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      String? email,
      String? password,
      String? nickname,
      List<String> interestedTags,
      List<String> selectedInterestedTags,
      RegisterPage page});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$_RegisterState>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? nickname = freezed,
    Object? interestedTags = null,
    Object? selectedInterestedTags = null,
    Object? page = null,
  }) {
    return _then(_$_RegisterState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      interestedTags: null == interestedTags
          ? _value._interestedTags
          : interestedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedInterestedTags: null == selectedInterestedTags
          ? _value._selectedInterestedTags
          : selectedInterestedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as RegisterPage,
    ));
  }
}

/// @nodoc

class _$_RegisterState extends _RegisterState {
  _$_RegisterState(
      {this.loading = false,
      this.email,
      this.password,
      this.nickname,
      final List<String> interestedTags = const [],
      final List<String> selectedInterestedTags = const [],
      this.page = RegisterPage.email})
      : _interestedTags = interestedTags,
        _selectedInterestedTags = selectedInterestedTags,
        super._();

  @override
  @JsonKey()
  final bool loading;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? nickname;
  final List<String> _interestedTags;
  @override
  @JsonKey()
  List<String> get interestedTags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interestedTags);
  }

  final List<String> _selectedInterestedTags;
  @override
  @JsonKey()
  List<String> get selectedInterestedTags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedInterestedTags);
  }

  @override
  @JsonKey()
  final RegisterPage page;

  @override
  String toString() {
    return 'RegisterState(loading: $loading, email: $email, password: $password, nickname: $nickname, interestedTags: $interestedTags, selectedInterestedTags: $selectedInterestedTags, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            const DeepCollectionEquality()
                .equals(other._interestedTags, _interestedTags) &&
            const DeepCollectionEquality().equals(
                other._selectedInterestedTags, _selectedInterestedTags) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      email,
      password,
      nickname,
      const DeepCollectionEquality().hash(_interestedTags),
      const DeepCollectionEquality().hash(_selectedInterestedTags),
      page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState extends RegisterState {
  factory _RegisterState(
      {final bool loading,
      final String? email,
      final String? password,
      final String? nickname,
      final List<String> interestedTags,
      final List<String> selectedInterestedTags,
      final RegisterPage page}) = _$_RegisterState;
  _RegisterState._() : super._();

  @override
  bool get loading;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get nickname;
  @override
  List<String> get interestedTags;
  @override
  List<String> get selectedInterestedTags;
  @override
  RegisterPage get page;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
