import 'package:grasstudy_client/data/common/status/status.dart';
import 'package:grasstudy_client/data/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const UserState._();
  factory UserState({
    required Status status,
    User? user,
  }) = _UserState;
}
