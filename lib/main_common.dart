import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grasstudy_client/bloc/route/route_bloc.dart';
import 'package:grasstudy_client/bloc/user/user_bloc.dart';
import 'package:grasstudy_client/common/module/api/client.dart';
import 'package:grasstudy_client/common/module/api/client_dio.dart';
import 'package:grasstudy_client/common/config/app_config.dart';
import 'package:grasstudy_client/common/config/route.dart';
import 'package:grasstudy_client/presentation/screen/grasstudy.dart';
import 'package:grasstudy_client/presentation/screen/home/home_screen.dart';
import 'package:grasstudy_client/presentation/screen/login/login_screen.dart';
import 'package:grasstudy_client/presentation/screen/login/register/register_screen.dart';
import 'package:grasstudy_client/presentation/screen/splash_screen.dart';

void mainCommon(AppConfig appConfig) {
  Client client = ClientDio(appConfig.baseUrl);

  final GrassRouter grassRouter = GrassRouter(noLoginRequireds: [
    SplashScreen.routeName,
    HomeScreen.routeName,
    LoginScreen.routeName,
    RegisterScreen.routeName,
  ]);
  final UserBloc userBloc = UserBloc();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => userBloc),
        BlocProvider(
            create: (context) => RouteBloc(
                  grassRouter: grassRouter,
                  userBloc: userBloc,
                )),
      ],
      child: const Grasstudy(),
    ),
  );
}
