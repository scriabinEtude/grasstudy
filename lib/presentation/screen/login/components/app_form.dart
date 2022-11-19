import 'package:flutter/material.dart';

class AppForm extends StatelessWidget {
  const AppForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    this.onEmailChange,
    this.onPasswordChange,
  });
  final GlobalKey<FormState> formKey;

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final void Function(String)? onEmailChange;
  final void Function(String)? onPasswordChange;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: emailController,
            onChanged: onEmailChange,
            decoration: const InputDecoration(
              label: Text('이메일'),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) return "이메일을 입력해 주세요";
              if (!value.contains("@")) return "이메일 형식이 아닙니다.";
              if (!value.split("@")[1].contains(".")) {
                return "이메일 형식이 아닙니다.";
              }
              return null;
            },
          ),
          TextFormField(
            controller: passwordController,
            onChanged: onPasswordChange,
            obscureText: true,
            decoration: const InputDecoration(
              label: Text('비밀번호'),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "비밀번호를 입력해 주세요";
              }
              if (8 <= value.length && value.length <= 12) {
                return null;
              } else {
                return "비밀번호는 8~12자리여야 합니다.";
              }
            },
          ),
        ],
      ),
    );
  }
}
