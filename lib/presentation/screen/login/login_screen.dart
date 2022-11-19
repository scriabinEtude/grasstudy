import 'package:flutter/material.dart';
import 'package:grasstudy_client/presentation/color/light_color.dart';
import 'package:grasstudy_client/presentation/components/logo.dart';
import 'package:go_router/go_router.dart';
import 'package:grasstudy_client/presentation/screen/login/components/app_form.dart';
import 'package:grasstudy_client/presentation/screen/login/components/filled_button.dart';
import 'package:grasstudy_client/presentation/screen/login/register/register_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static const routeName = '/login';
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void onLogin() {
    if (formKey.currentState?.validate() == true) {
      // 로그인
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                LoginScreenFilledButton(
                  onPressed: onLogin,
                  text: '로그인',
                ),
                const _RegisterButton(),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Logo(),
              AppForm(
                formKey: formKey,
                emailController: emailController,
                passwordController: passwordController,
              ),
              const SizedBox.shrink(),
            ],
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
