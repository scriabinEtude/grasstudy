import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grasstudy_client/bloc/register/register_bloc.dart';
import 'package:grasstudy_client/bloc/register/register_state.dart';
import 'package:grasstudy_client/presentation/screen/login/components/filled_button.dart';
import 'package:grasstudy_client/presentation/screen/login/register/email_password_screen.dart';
import 'package:grasstudy_client/presentation/screen/login/register/interest_tag_screen.dart';
import 'package:grasstudy_client/bloc/register/register_event.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static const routeName = "/login/register";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(),
        floatingActionButton: BlocSelector<RegisterBloc, RegisterState, bool>(
            selector: (state) => state.validation,
            builder: (context, validation) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: LoginScreenFilledButton(
                  onPressed: () {
                    BlocProvider.of<RegisterBloc>(context)
                        .add(RegisterEvent.next());
                  },
                  text: "다음",
                  enable: validation,
                ),
              );
            }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocListener<RegisterBloc, RegisterState>(
            listenWhen: (previous, current) =>
                previous.screenPageViewIndex != current.screenPageViewIndex,
            listener: (context, state) {
              controller.animateToPage(
                state.screenPageViewIndex,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOutExpo,
              );
            },
            child: PageView(
              controller: controller,
              children: [
                EmailPasswordScreen(),
                InterestTagScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
