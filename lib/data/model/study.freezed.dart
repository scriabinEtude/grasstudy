// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'study.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Study _$StudyFromJson(Map<String, dynamic> json) {
  return _Study.fromJson(json);
}

/// @nodoc
mixin _$Study {
  String get name => throw _privateConstructorUsedError;
  String get introduce => throw _privateConstructorUsedError;
  List<String> get interestTags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudyCopyWith<Study> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyCopyWith<$Res> {
  factory $StudyCopyWith(Study value, $Res Function(Study) then) =
      _$StudyCopyWithImpl<$Res, Study>;
  @useResult
  $Res call({String name, String introduce, List<String> interestTags});
}

/// @nodoc
class _$StudyCopyWithImpl<$Res, $Val extends Study>
    implements $StudyCopyWith<$Res> {
  _$StudyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? introduce = null,
    Object? interestTags = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      introduce: null == introduce
          ? _value.introduce
          : introduce // ignore: cast_nullable_to_non_nullable
              as String,
      interestTags: null == interestTags
          ? _value.interestTags
          : interestTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudyCopyWith<$Res> implements $StudyCopyWith<$Res> {
  factory _$$_StudyCopyWith(_$_Study value, $Res Function(_$_Study) then) =
      __$$_StudyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String introduce, List<String> interestTags});
}

/// @nodoc
class __$$_StudyCopyWithImpl<$Res> extends _$StudyCopyWithImpl<$Res, _$_Study>
    implements _$$_StudyCopyWith<$Res> {
  __$$_StudyCopyWithImpl(_$_Study _value, $Res Function(_$_Study) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? introduce = null,
    Object? interestTags = null,
  }) {
    return _then(_$_Study(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      introduce: null == introduce
          ? _value.introduce
          : introduce // ignore: cast_nullable_to_non_nullable
              as String,
      interestTags: null == interestTags
          ? _value._interestTags
          : interestTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Study implements _Study {
  _$_Study(
      {required this.name,
      required this.introduce,
      required final List<String> interestTags})
      : _interestTags = interestTags;

  factory _$_Study.fromJson(Map<String, dynamic> json) =>
      _$$_StudyFromJson(json);

  @override
  final String name;
  @override
  final String introduce;
  final List<String> _interestTags;
  @override
  List<String> get interestTags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interestTags);
  }

  @override
  String toString() {
    return 'Study(name: $name, introduce: $introduce, interestTags: $interestTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Study &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.introduce, introduce) ||
                other.introduce == introduce) &&
            const DeepCollectionEquality()
                .equals(other._interestTags, _interestTags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, introduce,
      const DeepCollectionEquality().hash(_interestTags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudyCopyWith<_$_Study> get copyWith =>
      __$$_StudyCopyWithImpl<_$_Study>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudyToJson(
      this,
    );
  }
}

abstract class _Study implements Study {
  factory _Study(
      {required final String name,
      required final String introduce,
      required final List<String> interestTags}) = _$_Study;

  factory _Study.fromJson(Map<String, dynamic> json) = _$_Study.fromJson;

  @override
  String get name;
  @override
  String get introduce;
  @override
  List<String> get interestTags;
  @override
  @JsonKey(ignore: true)
  _$$_StudyCopyWith<_$_Study> get copyWith =>
      throw _privateConstructorUsedError;
}
