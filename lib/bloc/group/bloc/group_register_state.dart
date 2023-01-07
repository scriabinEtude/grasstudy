import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grasstudy_client/data/common/status/status.dart';

part 'group_register_state.freezed.dart';

@freezed
class GroupRegisterState with _$GroupRegisterState {
  factory GroupRegisterState({
    required Status status,
    String? name,
    String? introduce,
    List<String>? tags,
  }) = _GroupRegisterState;
}
