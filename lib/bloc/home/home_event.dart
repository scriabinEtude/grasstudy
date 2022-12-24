import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grasstudy_client/data/enum/home_index.dart';

part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  factory HomeEvent.setTabIndex(HomeIndex index) = HomeEventSetTabIndex;
}
