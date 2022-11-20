import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.freezed.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.next() = RegisterEventNext;
  const factory RegisterEvent.setEmail(String email) = RegisterEventSetEmail;
  const factory RegisterEvent.setPassword(String password) =
      RegisterEventSetPassword;
  const factory RegisterEvent.setNickname(String nickname) =
      RegisterEventSetNickname;
}
