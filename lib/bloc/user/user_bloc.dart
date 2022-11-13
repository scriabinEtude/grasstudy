import 'package:bloc/bloc.dart';
import 'package:grasstudy_client/model/user.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, User?> {
  UserBloc() : super(null) {
    on<UserEvent>((event, emit) {});
  }

  User? get user => state;
}
