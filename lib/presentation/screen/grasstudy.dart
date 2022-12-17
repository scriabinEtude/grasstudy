import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grasstudy_client/bloc/route/route_bloc.dart';
import 'package:grasstudy_client/presentation/color/light_color.dart';

class Grasstudy extends StatelessWidget {
  const Grasstudy({super.key});

  @override
  Widget build(BuildContext context) {
    RouteBloc routeBloc = BlocProvider.of<RouteBloc>(context);

    return ScreenUtilInit(
        designSize: const Size(428, 926), //pro max
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            routeInformationParser:
                routeBloc.state.goRouter.routeInformationParser,
            routerDelegate: routeBloc.state.goRouter.routerDelegate,
            routeInformationProvider:
                routeBloc.state.goRouter.routeInformationProvider,
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
              primarySwatch: Colors.teal,
              primaryColor: lightColorTheme.primaryColor,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              backgroundColor: Colors.white,
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: const AppBarTheme(
                elevation: 0,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
            ),
          );
        });
  }
}
