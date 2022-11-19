import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grasstudy_client/presentation/screen/user_info/user_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            "잔터디",
          ),
          actions: const [
            _GoUser(),
          ],
        ),
      ),
    );
  }
}

class _GoUser extends StatelessWidget {
  const _GoUser();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed(UserScreen.routeName);
      },
      child: const Icon(
        Icons.person,
        color: Colors.black,
        size: 30,
      ),
    );
  }
}
