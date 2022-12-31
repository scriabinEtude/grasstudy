import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_register_event.freezed.dart';

@freezed
class GroupRegisterEvent with _$GroupRegisterEvent {
  factory GroupRegisterEvent.init() = GroupRegisterEventInit;
  factory GroupRegisterEvent.setName(String name) = GroupRegisterEventSetName;
  factory GroupRegisterEvent.setIntroduce(String introduce) =
      GroupRegisterEventSetIntroduce;
}
