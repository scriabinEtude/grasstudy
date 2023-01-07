import 'package:bloc/bloc.dart';
import 'package:grasstudy_client/bloc/group/bloc/group_register_event.dart';
import 'package:grasstudy_client/bloc/group/bloc/group_register_state.dart';
import 'package:grasstudy_client/common/config/di.dart';
import 'package:grasstudy_client/data/common/status/status.dart';
import 'package:grasstudy_client/data/model/study.dart';
import 'package:grasstudy_client/data/repository/study/study_repository.dart';

class GroupRegisterBloc extends Bloc<GroupRegisterEvent, GroupRegisterState> {
  GroupRegisterBloc()
      : _studyRepository = di.get<StudyRepository>(),
        super(GroupRegisterState(status: StatusInit())) {
    on<GroupRegisterEventInit>(_init);
    on<GroupRegisterEventSetName>(_setName);
    on<GroupRegisterEventSetIntroduce>(_setIntroduce);
    on<GroupRegisterEventSetTags>(_setTags);
    on<GroupRegisterEventSubmit>(_submit);
  }

  final StudyRepository _studyRepository;

  _init(GroupRegisterEventInit event, Emitter emit) {
    emit(GroupRegisterState(status: StatusInit()));
  }

  _setName(GroupRegisterEventSetName event, Emitter emit) {
    emit(state.copyWith(name: event.name));
  }

  _setIntroduce(GroupRegisterEventSetIntroduce event, Emitter emit) {
    emit(state.copyWith(introduce: event.introduce));
  }

  _setTags(GroupRegisterEventSetTags event, Emitter emit) {
    emit(state.copyWith(tags: event.tags));
  }

  _submit(GroupRegisterEventSubmit event, Emitter emit) async {
    await _studyRepository.register(Study(
        name: state.name!,
        introduce: state.introduce!,
        interestTags: state.tags!));

    add(GroupRegisterEvent.init());
  }
}
