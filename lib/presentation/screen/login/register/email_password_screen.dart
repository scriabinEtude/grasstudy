import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grasstudy_client/bloc/register/register_bloc.dart';
import 'package:grasstudy_client/presentation/components/logo.dart';
import 'package:grasstudy_client/presentation/screen/login/components/app_form.dart';
import 'package:grasstudy_client/bloc/register/register_event.dart';

class EmailPasswordScreen extends StatelessWidget {
  EmailPasswordScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void onEmailChange(String text, RegisterBloc bloc) {
    bloc.add(RegisterEvent.setEmail(text));
  }

  void onPasswordChange(String text, RegisterBloc bloc) {}

  @override
  Widget build(BuildContext context) {
    RegisterBloc bloc = BlocProvider.of<RegisterBloc>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: const [
            Logo(),
            Text(
              '회원가입',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        AppForm(
          formKey: bloc.formkey,
          emailController: emailController,
          passwordController: passwordController,
          onEmailChange: (text) => onEmailChange(text, bloc),
          onPasswordChange: (text) => onPasswordChange(text, bloc),
        ),
        const SizedBox.shrink(),
      ],
    );
  }
}
