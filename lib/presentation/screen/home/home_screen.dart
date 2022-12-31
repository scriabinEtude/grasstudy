import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:grasstudy_client/bloc/home/home_bloc.dart';
import 'package:grasstudy_client/bloc/home/home_state.dart';
import 'package:grasstudy_client/bloc/home/home_event.dart';
import 'package:grasstudy_client/bloc/user/user_bloc.dart';
import 'package:grasstudy_client/bloc/user/user_state.dart';
import 'package:grasstudy_client/data/enum/home_index.dart';
import 'package:grasstudy_client/presentation/screen/group/register/group_register_01_name_screen.dart';
import 'package:grasstudy_client/presentation/screen/login/login_screen.dart';
import 'package:grasstudy_client/presentation/screen/my/my_group_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: const Text(
                "GRASSTUDY",
              ),
              actions: const [
                _GoUser(),
              ],
            ),
            floatingActionButton: _FAB(state),
            bottomNavigationBar: _Navigator(state),
            body: _Body(state),
          );
        },
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body(this.state);
  final HomeState state;

  @override
  Widget build(BuildContext context) {
    switch (state.tabIndex) {
      case HomeIndex.my:
        return const MyGroupScreen();
      default:
        return const SizedBox.shrink();
    }
  }
}

class _FAB extends StatelessWidget {
  const _FAB(this.state);
  final HomeState state;

  @override
  Widget build(BuildContext context) {
    switch (state.tabIndex) {
      case HomeIndex.my:
        return FloatingActionButton(
          mini: true,
          onPressed: () => context.goNamed(GroupRegister01NameScreen.routeName),
          child: const Icon(Icons.add),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}

class _Navigator extends StatelessWidget {
  const _Navigator(this.state);
  final HomeState state;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: state.tabIndex.index,
      items: [
        BottomNavigationBarItem(
            icon: HomeIndex.my.icon, label: HomeIndex.my.label),
        BottomNavigationBarItem(
            icon: HomeIndex.search.icon, label: HomeIndex.search.label),
      ],
      onTap: (value) {
        BlocProvider.of<HomeBloc>(context)
            .add(HomeEvent.setTabIndex(HomeIndex.values[value]));
      },
    );
  }
}

class _GoUser extends StatelessWidget {
  const _GoUser();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Visibility(
          visible: state.user == null,
          child: InkWell(
            onTap: () {
              context.goNamed(LoginScreen.routeName);
            },
            child: Row(
              children: const [
                Text('로그인'),
                SizedBox(width: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}
