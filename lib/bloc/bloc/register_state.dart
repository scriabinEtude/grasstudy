import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_state.freezed.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  factory RegisterState({
    String? email,
    String? password,
    List<String>? interestedTags,
  }) = _RegisterState;
}
