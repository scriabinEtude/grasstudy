part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {}

class InputEmailAndPasswordEvent extends RegisterEvent {
  final String email;
  final String password;

  InputEmailAndPasswordEvent({
    required this.email,
    required this.password,
  });
}
