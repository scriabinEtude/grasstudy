import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();
  factory RegisterState({
    @Default(false) bool loading,
    String? email,
    String? password,
    @Default([]) List<String> interestedTags,
    @Default(0) int screenPageViewIndex,
  }) = _RegisterState;

  bool get validation {
    switch (screenPageViewIndex) {
      case 0:
        return true;
      case 1:
        return interestedTags.isNotEmpty;
      default:
        return false;
    }
  }
}
