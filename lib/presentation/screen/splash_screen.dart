import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:grasstudy_client/bloc/user/user_bloc.dart';
import 'package:grasstudy_client/bloc/user/user_event.dart';
import 'package:grasstudy_client/presentation/components/logo.dart';
import 'package:grasstudy_client/presentation/screen/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const routeName = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      moveHome();
      autoLogin();
    });
  }

  moveHome() {
    context.goNamed(HomeScreen.routeName);
  }

  autoLogin() {
    BlocProvider.of<UserBloc>(context).add(const UserEvent.autoLogin());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Logo(),
      ),
    );
  }
}
