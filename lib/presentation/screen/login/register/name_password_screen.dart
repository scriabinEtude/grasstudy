import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grasstudy_client/bloc/register/register_bloc.dart';
import 'package:grasstudy_client/bloc/register/register_event.dart';
import 'package:grasstudy_client/presentation/components/logo.dart';

class NameAndPasswordScreen extends StatelessWidget {
  NameAndPasswordScreen({super.key});

  final TextEditingController emailController = TextEditingController();

  void onNicknameChange(String text, RegisterBloc bloc) {
    bloc.add(RegisterEvent.setNickname(text));
  }

  void onPssswordChange(String text, RegisterBloc bloc) {
    bloc.add(RegisterEvent.setPassword(text));
  }

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
              '닉네임과 비밀번호를 입력하세요.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        _NamePasswordForm(
          formKey: bloc.nameAndPasswordFormKey,
          onNicknameChange: (text) => onNicknameChange(text, bloc),
          onPasswordChange: (text) => onPssswordChange(text, bloc),
        ),
        const SizedBox.shrink(),
      ],
    );
  }
}

class _NamePasswordForm extends StatelessWidget {
  const _NamePasswordForm({
    required this.formKey,
    this.onNicknameChange,
    this.onPasswordChange,
  });
  final GlobalKey<FormState> formKey;

  final void Function(String)? onNicknameChange;
  final void Function(String)? onPasswordChange;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            onChanged: onNicknameChange,
            decoration: const InputDecoration(
              label: Text('닉네임'),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) return "닉네임을 입력해 주세요";
              if (value.length > 12) return "닉네임은 12자리를 넘을 수 없습니다.";
              return null;
            },
          ),
          TextFormField(
            onChanged: onPasswordChange,
            obscureText: true,
            decoration: const InputDecoration(
              label: Text('비밀번호'),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "비밀번호를 입력해 주세요";
              } else if (value.length > 16 || 8 > value.length) {
                return "비밀번호는 8~16자리여야 합니다.";
              } else if (!RegExp(
                      r'^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^*+=-]).{8,16}$')
                  .hasMatch(value)) {
                return "영문 대소문자, 숫자, 특수문자를 포함해야 합니다.";
              } else {
                return null;
              }
            },
          ),
        ],
      ),
    );
  }
}
