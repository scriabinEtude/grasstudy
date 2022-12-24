import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grasstudy_client/data/common/status/status.dart';
import 'package:grasstudy_client/data/enum/home_index.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required Status status,
    @Default(HomeIndex.my) HomeIndex tabIndex,
  }) = _HomeState;
}
