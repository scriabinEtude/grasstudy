import 'package:bloc/bloc.dart';
import 'package:grasstudy_client/bloc/home/home_event.dart';
import 'package:grasstudy_client/bloc/home/home_state.dart';
import 'package:grasstudy_client/data/common/status/status.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(status: StatusInit())) {
    on<HomeEventSetTabIndex>(_setTabIndex);
  }

  _setTabIndex(HomeEventSetTabIndex event, Emitter emit) {
    emit(state.copyWith(tabIndex: event.index));
  }
}
