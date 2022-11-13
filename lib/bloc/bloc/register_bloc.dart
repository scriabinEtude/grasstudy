import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'register_state.dart';

part 'register_event.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState()) {
    on<InputEmailAndPasswordEvent>(_checkDuplicateEmail);
  }

  _checkDuplicateEmail(InputEmailAndPasswordEvent event, Emitter emit) {}
}
