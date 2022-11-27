import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:grasstudy_client/bloc/user/user_event.dart';
import 'package:grasstudy_client/bloc/user/user_state.dart';
import 'package:grasstudy_client/common/config/di.dart';
import 'package:grasstudy_client/common/module/api/result.dart';
import 'package:grasstudy_client/common/module/secure_storage/secure_storage.dart';
import 'package:grasstudy_client/data/common/status/status.dart';
import 'package:grasstudy_client/data/model/jwt.dart';
import 'package:grasstudy_client/data/model/user.dart';
import 'package:grasstudy_client/data/repository/user/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc()
      : _userRepository = di.get<UserRepository>(),
        super(UserState(status: Status.init())) {
    on<UserEventSetUser>(_setUser);
    on<UserEventLogin>(_login);
    on<UserEventLogout>(_logout);
  }

  final UserRepository _userRepository;

  _login(UserEventLogin event, Emitter emit) async {
    try {
      emit(state.copyWith(status: Status.loading()));

      Result<JWT> result =
          await _userRepository.login(event.email, event.password);

      result.map(
        success: (success) {
          SecureStorage().jwtSet(success.data);
          emit(
            state.copyWith(
              user: User(
                email: event.email,
                nickname: 'tester',
              ),
              status: Status.success(),
            ),
          );
        },
        failure: (failure) {
          emit(state.copyWith(status: Status.fail(message: "로그인에 실패하였습니다.")));
        },
      );
    } catch (e) {
      emit(state.copyWith(status: Status.fail(message: "로그인에 실패하였습니다.")));
    }
  }

  _logout(UserEventLogout event, Emitter emit) {
    SecureStorage().jwtRemove();
    emit(UserState(status: StatusInit()));
  }

  _setUser(UserEventSetUser event, Emitter emit) {
    emit(state.copyWith(user: event.user));
  }

  User? get user => state.user;
}
