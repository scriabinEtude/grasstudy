import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grasstudy_client/bloc/register/register_bloc.dart';
import 'package:grasstudy_client/bloc/register/register_state.dart';
import 'package:grasstudy_client/presentation/screen/login/components/filled_button.dart';
import 'package:grasstudy_client/presentation/screen/login/register/email_screen.dart';
import 'package:grasstudy_client/presentation/screen/login/register/email_verification_screen.dart';
import 'package:grasstudy_client/presentation/screen/login/register/interest_tag_screen.dart';
import 'package:grasstudy_client/bloc/register/register_event.dart';
import 'package:grasstudy_client/presentation/screen/login/register/name_password_screen.dart';
import 'package:grasstudy_client/presentation/screen/login/register/register_welcome_screen.dart';

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
        floatingActionButton: BlocBuilder<RegisterBloc, RegisterState>(
            buildWhen: (previous, current) {
          return previous.validation != current.validation ||
              previous.page != current.page ||
              previous.status != current.status;
        }, builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: LoginScreenFilledButton(
              onPressed: () {
                BlocProvider.of<RegisterBloc>(context)
                    .add(const RegisterEvent.next());
              },
              text: state.page.buttonText,
              enable: state.validation,
              status: state.status,
            ),
          );
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocListener<RegisterBloc, RegisterState>(
            listenWhen: (previous, current) => previous.page != current.page,
            listener: (context, state) {
              controller.animateToPage(
                state.page.index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOutExpo,
              );
            },
            child: PageView(
              controller: controller,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                EmailScreen(),
                const EmailVerificationScreen(),
                NameAndPasswordScreen(),
                const InterestTagScreen(),
                const RegisterWelcomeScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
