// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  HomeIndex get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeIndex index) setTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeIndex index)? setTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeIndex index)? setTabIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventSetTabIndex value) setTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventSetTabIndex value)? setTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventSetTabIndex value)? setTabIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
  @useResult
  $Res call({HomeIndex index});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as HomeIndex,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeEventSetTabIndexCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$HomeEventSetTabIndexCopyWith(_$HomeEventSetTabIndex value,
          $Res Function(_$HomeEventSetTabIndex) then) =
      __$$HomeEventSetTabIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeIndex index});
}

/// @nodoc
class __$$HomeEventSetTabIndexCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventSetTabIndex>
    implements _$$HomeEventSetTabIndexCopyWith<$Res> {
  __$$HomeEventSetTabIndexCopyWithImpl(_$HomeEventSetTabIndex _value,
      $Res Function(_$HomeEventSetTabIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$HomeEventSetTabIndex(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as HomeIndex,
    ));
  }
}

/// @nodoc

class _$HomeEventSetTabIndex implements HomeEventSetTabIndex {
  _$HomeEventSetTabIndex(this.index);

  @override
  final HomeIndex index;

  @override
  String toString() {
    return 'HomeEvent.setTabIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventSetTabIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventSetTabIndexCopyWith<_$HomeEventSetTabIndex> get copyWith =>
      __$$HomeEventSetTabIndexCopyWithImpl<_$HomeEventSetTabIndex>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeIndex index) setTabIndex,
  }) {
    return setTabIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeIndex index)? setTabIndex,
  }) {
    return setTabIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeIndex index)? setTabIndex,
    required TResult orElse(),
  }) {
    if (setTabIndex != null) {
      return setTabIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventSetTabIndex value) setTabIndex,
  }) {
    return setTabIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventSetTabIndex value)? setTabIndex,
  }) {
    return setTabIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventSetTabIndex value)? setTabIndex,
    required TResult orElse(),
  }) {
    if (setTabIndex != null) {
      return setTabIndex(this);
    }
    return orElse();
  }
}

abstract class HomeEventSetTabIndex implements HomeEvent {
  factory HomeEventSetTabIndex(final HomeIndex index) = _$HomeEventSetTabIndex;

  @override
  HomeIndex get index;
  @override
  @JsonKey(ignore: true)
  _$$HomeEventSetTabIndexCopyWith<_$HomeEventSetTabIndex> get copyWith =>
      throw _privateConstructorUsedError;
}
