import 'package:bloc/bloc.dart';
import 'package:grasstudy_client/bloc/group/bloc/group_register_event.dart';
import 'package:grasstudy_client/bloc/group/bloc/group_register_state.dart';
import 'package:grasstudy_client/data/common/status/status.dart';

class GroupRegisterBloc extends Bloc<GroupRegisterEvent, GroupRegisterState> {
  GroupRegisterBloc() : super(GroupRegisterState(status: StatusInit())) {
    on<GroupRegisterEventInit>(_init);
    on<GroupRegisterEventSetName>(_setName);
    on<GroupRegisterEventSetIntroduce>(_setIntroduce);
  }

  _init(GroupRegisterEventInit event, Emitter emit) {
    emit(GroupRegisterState(status: StatusInit()));
  }

  _setName(GroupRegisterEventSetName event, Emitter emit) {
    emit(state.copyWith(name: event.name));
  }

  _setIntroduce(GroupRegisterEventSetIntroduce event, Emitter emit) {
    emit(state.copyWith(introduce: event.introduce));
  }
}
