import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:grasstudy_client/bloc/register/register_bloc.dart';
import 'package:grasstudy_client/bloc/user/user_bloc.dart';
import 'package:grasstudy_client/screen/home/home_screen.dart';
import 'package:grasstudy_client/screen/login/login_screen.dart';
import 'package:grasstudy_client/screen/login/register/register_screen.dart';
import 'package:grasstudy_client/screen/splash_screen.dart';
import 'package:grasstudy_client/screen/user_info/user_screen.dart';

class GrassRouter {
  final List<String> noLoginRequireds;

  GrassRouter({required this.noLoginRequireds});

  GoRouter getRouter() {
    return GoRouter(
      debugLogDiagnostics: true,
      initialLocation: "/splash",
      redirect: (context, state) {
        if (noLoginRequireds.contains(state.location)) {
          return state.location;
        }

        UserBloc userbloc = BlocProvider.of<UserBloc>(context);

        if (userbloc.user == null) {
          return "/login";
        } else {
          return state.location;
        }
      },
      routes: [
        GoRoute(
            path: '/',
            name: HomeScreen.routeName,
            builder: ((context, state) => const HomeScreen()),
            routes: [
              GoRoute(
                path: 'splash',
                name: SplashScreen.routeName,
                builder: (context, state) => const SplashScreen(),
              ),
              GoRoute(
                path: 'user',
                name: UserScreen.routeName,
                builder: (context, state) => const UserScreen(),
              ),
              GoRoute(
                  path: 'login',
                  name: LoginScreen.routeName,
                  builder: (context, state) {
                    return LoginScreen();
                  },
                  routes: [
                    GoRoute(
                      path: 'register',
                      name: RegisterScreen.routeName,
                      builder: (context, state) => BlocProvider(
                        create: (context) => RegisterBloc(),
                        child: RegisterScreen(),
                      ),
                    ),
                  ]),
            ])
      ],
    );
  }
}
