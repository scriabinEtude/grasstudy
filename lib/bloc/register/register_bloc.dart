import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:grasstudy_client/bloc/register/register_event.dart';
import 'package:grasstudy_client/common/config/di.dart';
import 'package:grasstudy_client/common/module/api/result.dart';
import 'package:grasstudy_client/data/model/tag.dart';
import 'package:grasstudy_client/data/model/user.dart';
import 'package:grasstudy_client/data/repository/tag/tag_repository.dart';
import 'package:grasstudy_client/data/repository/user/user_repository.dart';
import 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc()
      : _tagRepository = di.get<TagRepository>(),
        _userRepository = di.get<UserRepository>(),
        super(RegisterState()) {
    on<RegisterEventNext>(_next);
    on<RegisterEventSetEmail>(_setEmail);
    on<RegisterEventSetPassword>(_setPassword);
    on<RegisterEventSetNickname>(_setNickname);
  }

  final UserRepository _userRepository;
  final TagRepository _tagRepository;

  final emailFormKey = GlobalKey<FormState>();
  final nameAndPasswordFormKey = GlobalKey<FormState>();

  _next(RegisterEventNext event, Emitter emit) async {
    switch (state.page) {
      case RegisterPage.email:
        if (emailFormKey.currentState?.validate() == true) {
          emit(state.copyWith(page: RegisterPage.nameAndPassword));
        }
        break;
      case RegisterPage.emailVerification:
        break;
      case RegisterPage.nameAndPassword:
        if (nameAndPasswordFormKey.currentState?.validate() == true) {
          emit(state.copyWith(loading: true));

          try {
            await _userRepository.register(User(
              email: state.email!,
              nickname: state.nickname!,
              password: state.password!,
            ));
          } catch (e) {
            emit(state.copyWith(loading: false));
          }

          try {
            final Result<List<Tag>> result =
                await _tagRepository.getTagsForRegist();
            result.map(
              success: (result) => emit(state.copyWith(
                interestedTags: result.data,
              )),
              failure: (result) => throw Error(),
            );
          } catch (e) {
            emit(state.copyWith(
              loading: false,
              page: RegisterPage.welcome,
            ));
          }

          emit(state.copyWith(
            page: RegisterPage.interestTags,
            loading: false,
          ));
        }
        break;
      case RegisterPage.interestTags:
        break;
      case RegisterPage.welcome:
        break;
    }
  }

  _setEmail(RegisterEventSetEmail event, Emitter emit) {
    emit(state.copyWith(email: event.email));
  }

  _setPassword(RegisterEventSetPassword event, Emitter emit) {
    emit(state.copyWith(password: event.password));
  }

  _setNickname(RegisterEventSetNickname event, Emitter emit) {
    emit(state.copyWith(nickname: event.nickname));
  }
}
