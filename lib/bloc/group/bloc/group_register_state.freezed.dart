// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupRegisterState {
  Status get status => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get introduce => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupRegisterStateCopyWith<GroupRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupRegisterStateCopyWith<$Res> {
  factory $GroupRegisterStateCopyWith(
          GroupRegisterState value, $Res Function(GroupRegisterState) then) =
      _$GroupRegisterStateCopyWithImpl<$Res, GroupRegisterState>;
  @useResult
  $Res call(
      {Status status, String? name, String? introduce, List<String>? tags});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$GroupRegisterStateCopyWithImpl<$Res, $Val extends GroupRegisterState>
    implements $GroupRegisterStateCopyWith<$Res> {
  _$GroupRegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = freezed,
    Object? introduce = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      introduce: freezed == introduce
          ? _value.introduce
          : introduce // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GroupRegisterStateCopyWith<$Res>
    implements $GroupRegisterStateCopyWith<$Res> {
  factory _$$_GroupRegisterStateCopyWith(_$_GroupRegisterState value,
          $Res Function(_$_GroupRegisterState) then) =
      __$$_GroupRegisterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status, String? name, String? introduce, List<String>? tags});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_GroupRegisterStateCopyWithImpl<$Res>
    extends _$GroupRegisterStateCopyWithImpl<$Res, _$_GroupRegisterState>
    implements _$$_GroupRegisterStateCopyWith<$Res> {
  __$$_GroupRegisterStateCopyWithImpl(
      _$_GroupRegisterState _value, $Res Function(_$_GroupRegisterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = freezed,
    Object? introduce = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_GroupRegisterState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      introduce: freezed == introduce
          ? _value.introduce
          : introduce // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_GroupRegisterState implements _GroupRegisterState {
  _$_GroupRegisterState(
      {required this.status,
      this.name,
      this.introduce,
      final List<String>? tags})
      : _tags = tags;

  @override
  final Status status;
  @override
  final String? name;
  @override
  final String? introduce;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GroupRegisterState(status: $status, name: $name, introduce: $introduce, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupRegisterState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.introduce, introduce) ||
                other.introduce == introduce) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, name, introduce,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupRegisterStateCopyWith<_$_GroupRegisterState> get copyWith =>
      __$$_GroupRegisterStateCopyWithImpl<_$_GroupRegisterState>(
          this, _$identity);
}

abstract class _GroupRegisterState implements GroupRegisterState {
  factory _GroupRegisterState(
      {required final Status status,
      final String? name,
      final String? introduce,
      final List<String>? tags}) = _$_GroupRegisterState;

  @override
  Status get status;
  @override
  String? get name;
  @override
  String? get introduce;
  @override
  List<String>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$_GroupRegisterStateCopyWith<_$_GroupRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
