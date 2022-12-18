import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:grasstudy_client/bloc/register/register_event.dart';
import 'package:grasstudy_client/common/config/di.dart';
import 'package:grasstudy_client/common/module/api/result.dart';
import 'package:grasstudy_client/data/common/status/status.dart';
import 'package:grasstudy_client/data/model/tag.dart';
import 'package:grasstudy_client/data/model/user.dart';
import 'package:grasstudy_client/data/repository/tag/tag_repository.dart';
import 'package:grasstudy_client/data/repository/user/user_repository.dart';
import 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc()
      : _tagRepository = di.get<TagRepository>(),
        _userRepository = di.get<UserRepository>(),
        super(RegisterState(status: Status.init())) {
    on<RegisterEventNext>(_next);
    on<RegisterEventSetEmail>(_setEmail);
    on<RegisterEventSetPassword>(_setPassword);
    on<RegisterEventSetNickname>(_setNickname);
    on<RegisterEventTagSelect>(_tagSelect);
    on<RegisterEventTagAdd>(_tagAdd);
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
          emit(state.copyWith(status: Status.loading()));

          try {
            await _userRepository.register(User(
              email: state.email!,
              nickname: state.nickname!,
              password: state.password!,
            ));
          } catch (e) {
            emit(state.copyWith(
                status: Status.fail(message: "유저 등록에 실패하였습니다.")));
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
              status: Status.fail(message: "기본 태그를 불러오는데 실패하였습니다."),
              page: RegisterPage.welcome,
            ));
          }

          emit(state.copyWith(
            page: RegisterPage.interestTags,
            status: Status.success(),
          ));
        }
        break;
      case RegisterPage.interestTags:
        emit(state.copyWith(status: Status.loading()));
        try {
          if (state.selectedInterestedTags.isNotEmpty) {
            await _userRepository
                .updateUserInterestTag(state.selectedInterestedTags);
          }
        } catch (e) {
          emit(state.copyWith(
            status: Status.fail(message: "관심 태그 등록을 실패하였습니다."),
          ));
        }
        emit(state.copyWith(
          page: RegisterPage.welcome,
          user: User(
            email: state.email!,
            nickname: state.nickname!,
            password: state.password!,
            interestTags: state.selectedInterestedTags,
          ),
          status: Status.success(),
        ));
        break;
      case RegisterPage.welcome:
        emit(state.copyWith(done: true));
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

  _tagSelect(RegisterEventTagSelect event, Emitter emit) {
    if (state.selectedInterestedTags.contains(event.tag)) {
      emit(
        state.copyWith(
          selectedInterestedTags: state.selectedInterestedTags
              .where((tag) => tag != event.tag)
              .toList(),
        ),
      );
    } else {
      emit(state.copyWith(selectedInterestedTags: [
        ...state.selectedInterestedTags,
        event.tag,
      ]));
    }
  }

  _tagAdd(RegisterEventTagAdd event, Emitter emit) {
    emit(state.copyWith(
      interestedTags: [
        ...state.interestedTags,
        event.tag,
      ],
      selectedInterestedTags: [
        ...state.selectedInterestedTags,
        event.tag,
      ],
    ));
  }
}
