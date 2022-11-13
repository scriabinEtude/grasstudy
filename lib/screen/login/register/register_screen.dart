import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grasstudy_client/bloc/bloc/register_bloc.dart';
import 'package:grasstudy_client/color/light_color.dart';
import 'package:grasstudy_client/components/logo.dart';
import 'package:grasstudy_client/screen/login/components/app_form.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  static const routeName = "/login/register";
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  next(BuildContext context) {
    if (formKey.currentState?.validate() == true) {
      BlocProvider.of<RegisterBloc>(context).add(
        InputEmailAndPasswordEvent(
          email: emailController.text,
          password: passwordController.text,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Logo(),
                  Text(
                    '회원가입',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              AppForm(
                formKey: formKey,
                emailController: emailController,
                passwordController: passwordController,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: lightColorTheme.tertiaryColor,
                ),
                onPressed: () => next(context),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: Text(
                      '다음',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
