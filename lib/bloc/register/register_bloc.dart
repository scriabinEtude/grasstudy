import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:grasstudy_client/bloc/register/register_event.dart';
import 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState()) {
    on<RegisterEventNext>(_next);
    on<RegisterEventSetEmail>(_setEmail);
    on<RegisterEventSetPassword>(_setPassword);
  }

  final formkey = GlobalKey<FormState>();

  _next(RegisterEventNext event, Emitter emit) {}
  _setEmail(RegisterEventSetEmail event, Emitter emit) {
    emit(state.copyWith(email: event.email));
  }

  _setPassword(RegisterEventSetPassword event, Emitter emit) {
    emit(state.copyWith(password: event.password));
  }
}
