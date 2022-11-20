import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grasstudy_client/bloc/register/register_bloc.dart';
import 'package:grasstudy_client/presentation/components/logo.dart';
import 'package:grasstudy_client/bloc/register/register_event.dart';

class EmailScreen extends StatelessWidget {
  EmailScreen({super.key});

  final TextEditingController emailController = TextEditingController();

  void onEmailChange(String text, RegisterBloc bloc) {
    bloc.add(RegisterEvent.setEmail(text));
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
              '회원가입',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        _EmailForm(
          formKey: bloc.emailFormKey,
          onEmailChange: (text) => onEmailChange(text, bloc),
        ),
        const SizedBox.shrink(),
      ],
    );
  }
}

class _EmailForm extends StatelessWidget {
  const _EmailForm({
    super.key,
    required this.formKey,
    this.onEmailChange,
  });
  final GlobalKey<FormState> formKey;

  final void Function(String)? onEmailChange;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
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
        ],
      ),
    );
  }
}
