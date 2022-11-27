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
  Status get status => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  List<Tag> get interestedTags => throw _privateConstructorUsedError;
  List<Tag> get selectedInterestedTags => throw _privateConstructorUsedError;
  RegisterPage get page => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

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
      {Status status,
      User? user,
      String? email,
      String? password,
      String? nickname,
      List<Tag> interestedTags,
      List<Tag> selectedInterestedTags,
      RegisterPage page,
      bool done});

  $StatusCopyWith<$Res> get status;
  $UserCopyWith<$Res>? get user;
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
    Object? status = null,
    Object? user = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? nickname = freezed,
    Object? interestedTags = null,
    Object? selectedInterestedTags = null,
    Object? page = null,
    Object? done = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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
              as List<Tag>,
      selectedInterestedTags: null == selectedInterestedTags
          ? _value.selectedInterestedTags
          : selectedInterestedTags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as RegisterPage,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
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
      {Status status,
      User? user,
      String? email,
      String? password,
      String? nickname,
      List<Tag> interestedTags,
      List<Tag> selectedInterestedTags,
      RegisterPage page,
      bool done});

  @override
  $StatusCopyWith<$Res> get status;
  @override
  $UserCopyWith<$Res>? get user;
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
    Object? status = null,
    Object? user = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? nickname = freezed,
    Object? interestedTags = null,
    Object? selectedInterestedTags = null,
    Object? page = null,
    Object? done = null,
  }) {
    return _then(_$_RegisterState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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
              as List<Tag>,
      selectedInterestedTags: null == selectedInterestedTags
          ? _value._selectedInterestedTags
          : selectedInterestedTags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as RegisterPage,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterState extends _RegisterState {
  _$_RegisterState(
      {required this.status,
      this.user,
      this.email,
      this.password,
      this.nickname,
      final List<Tag> interestedTags = const [],
      final List<Tag> selectedInterestedTags = const [],
      this.page = RegisterPage.email,
      this.done = false})
      : _interestedTags = interestedTags,
        _selectedInterestedTags = selectedInterestedTags,
        super._();

  @override
  final Status status;
  @override
  final User? user;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? nickname;
  final List<Tag> _interestedTags;
  @override
  @JsonKey()
  List<Tag> get interestedTags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interestedTags);
  }

  final List<Tag> _selectedInterestedTags;
  @override
  @JsonKey()
  List<Tag> get selectedInterestedTags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedInterestedTags);
  }

  @override
  @JsonKey()
  final RegisterPage page;
  @override
  @JsonKey()
  final bool done;

  @override
  String toString() {
    return 'RegisterState(status: $status, user: $user, email: $email, password: $password, nickname: $nickname, interestedTags: $interestedTags, selectedInterestedTags: $selectedInterestedTags, page: $page, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            const DeepCollectionEquality()
                .equals(other._interestedTags, _interestedTags) &&
            const DeepCollectionEquality().equals(
                other._selectedInterestedTags, _selectedInterestedTags) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.done, done) || other.done == done));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      user,
      email,
      password,
      nickname,
      const DeepCollectionEquality().hash(_interestedTags),
      const DeepCollectionEquality().hash(_selectedInterestedTags),
      page,
      done);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState extends RegisterState {
  factory _RegisterState(
      {required final Status status,
      final User? user,
      final String? email,
      final String? password,
      final String? nickname,
      final List<Tag> interestedTags,
      final List<Tag> selectedInterestedTags,
      final RegisterPage page,
      final bool done}) = _$_RegisterState;
  _RegisterState._() : super._();

  @override
  Status get status;
  @override
  User? get user;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get nickname;
  @override
  List<Tag> get interestedTags;
  @override
  List<Tag> get selectedInterestedTags;
  @override
  RegisterPage get page;
  @override
  bool get done;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
