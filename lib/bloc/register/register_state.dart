import 'package:flutter/material.dart';
import 'package:grasstudy_client/data/model/tag.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

enum RegisterPage {
  email('이메일로 시작하기'),
  emailVerification('다음'),
  nameAndPassword('다음'),
  interestTags('다음'),
  welcome('완료');

  final String buttonText;

  const RegisterPage(this.buttonText);
}

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();
  factory RegisterState({
    @Default(false) bool loading,
    String? email,
    String? password,
    String? nickname,
    @Default([]) List<Tag> interestedTags,
    @Default([]) List<Tag> selectedInterestedTags,
    @Default(RegisterPage.email) RegisterPage page,
  }) = _RegisterState;

  bool get validation {
    switch (page) {
      case RegisterPage.email:
        break;
      case RegisterPage.emailVerification:
        break;
      case RegisterPage.nameAndPassword:
        break;
      case RegisterPage.interestTags:
        break;
      case RegisterPage.welcome:
        break;
    }
    return true;
  }
}
