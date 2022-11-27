import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grasstudy_client/bloc/register/register_bloc.dart';
import 'package:grasstudy_client/bloc/register/register_state.dart';
import 'package:go_router/go_router.dart';
import 'package:grasstudy_client/bloc/user/user_bloc.dart';
import 'package:grasstudy_client/bloc/user/user_event.dart';
import 'package:grasstudy_client/presentation/components/logo.dart';
import 'package:grasstudy_client/presentation/screen/home/home_screen.dart';

class RegisterWelcomeScreen extends StatelessWidget {
  const RegisterWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listenWhen: (previous, current) => previous.done != current.done,
      listener: (context, state) {
        if (state.done) {
          BlocProvider.of<UserBloc>(context)
              .add(UserEvent.login(state.email!, state.password!));
          context.goNamed(HomeScreen.routeName);
        }
      },
      child: Column(children: const [
        SizedBox(height: 100),
        Text(
          '환영합니다!',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        SizedBox(height: 30),
        Logo(),
        SizedBox(height: 200),
      ]),
    );
  }
}
