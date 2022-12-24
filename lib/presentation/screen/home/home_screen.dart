import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:grasstudy_client/bloc/home/home_bloc.dart';
import 'package:grasstudy_client/bloc/home/home_state.dart';
import 'package:grasstudy_client/bloc/home/home_event.dart';
import 'package:grasstudy_client/bloc/user/user_bloc.dart';
import 'package:grasstudy_client/bloc/user/user_state.dart';
import 'package:grasstudy_client/data/enum/home_index.dart';
import 'package:grasstudy_client/presentation/screen/login/login_screen.dart';

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
            floatingActionButton: state.tabIndex == HomeIndex.my
                ? FloatingActionButton(
                    mini: true,
                    onPressed: () {},
                    child: const Icon(Icons.add),
                  )
                : null,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.tabIndex.index,
              items: [
                BottomNavigationBarItem(
                    icon: HomeIndex.my.icon, label: HomeIndex.my.label),
                BottomNavigationBarItem(
                    icon: HomeIndex.search.icon, label: HomeIndex.search.label),
                BottomNavigationBarItem(
                    icon: HomeIndex.notImpl.icon,
                    label: HomeIndex.notImpl.label)
              ],
              onTap: (value) {
                BlocProvider.of<HomeBloc>(context)
                    .add(HomeEvent.setTabIndex(HomeIndex.values[value]));
              },
            ),
          );
        },
      ),
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
