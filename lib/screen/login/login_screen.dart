import 'package:flutter/material.dart';
import 'package:grasstudy_client/color/light_color.dart';
import 'package:grasstudy_client/components/logo.dart';
import 'package:go_router/go_router.dart';
import 'package:grasstudy_client/screen/home/home_screen.dart';
import 'package:grasstudy_client/screen/login/components/app_form.dart';
import 'package:grasstudy_client/screen/login/register/register_screen.dart';
import 'package:grasstudy_client/widget/test_border_container.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static const routeName = '/login';
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              Logo(),
              AppForm(
                formKey: formKey,
                emailController: emailController,
                passwordController: passwordController,
              ),
              Column(
                children: [
                  _SaveButton(formKey),
                  _RegisterButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SaveButton extends StatelessWidget {
  const _SaveButton(this.formKey);
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: lightColorTheme.tertiaryColor,
      ),
      onPressed: () {
        if (formKey.currentState?.validate() == true) {
          // 로그인
        }
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const Center(
          child: Text(
            '로그인',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => context.goNamed(RegisterScreen.routeName),
      child: Center(
        child: Text(
          '회원가입',
          style: TextStyle(
            fontSize: 16,
            color: lightColorTheme.tertiaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
