import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grasstudy_client/bloc/route/route_bloc.dart';
import 'package:grasstudy_client/bloc/user/user_bloc.dart';
import 'package:grasstudy_client/common/config/di.dart';
import 'package:grasstudy_client/common/config/app_config.dart';
import 'package:grasstudy_client/common/config/route.dart';
import 'package:grasstudy_client/presentation/screen/grasstudy.dart';

void mainCommon(AppConfig appConfig) {
  Di.setup(appConfig.baseUrl);
  final GrassRouter grassRouter = GrassRouter.preDefinedNoLoginRequireds();
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
