import 'package:bloc/bloc.dart';
import 'package:grasstudy_client/bloc/user/user_event.dart';
import 'package:grasstudy_client/common/config/di.dart';
import 'package:grasstudy_client/data/model/user.dart';
import 'package:grasstudy_client/data/repository/user/user_repository.dart';

class UserBloc extends Bloc<UserEvent, User?> {
  UserBloc()
      : _userRepository = di.get<UserRepository>(),
        super(null) {
    on<UserEvent>((event, emit) {});
  }

  final UserRepository _userRepository;

  User? get user => state;
}
