import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:grasstudy_client/route.dart';

part 'route_state.freezed.dart';

@freezed
class RouteState with _$RouteState {
  factory RouteState({
    required GoRouter goRouter,
  }) = _RouteState;
}
