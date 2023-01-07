import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grasstudy_client/bloc/group/bloc/group_register_bloc.dart';
import 'package:grasstudy_client/bloc/group/bloc/group_register_event.dart';
import 'package:grasstudy_client/presentation/screen/group/register/components/group_register_next_button.dart';
import 'package:grasstudy_client/presentation/screen/group/register/components/group_register_title.dart';
import 'package:go_router/go_router.dart';
import 'package:grasstudy_client/presentation/screen/group/register/group_register_02_introduce_screen.dart';

class GroupRegister01NameScreen extends StatefulWidget {
  const GroupRegister01NameScreen({super.key});

  static const String routeName = "/group/register/name";

  @override
  State<GroupRegister01NameScreen> createState() =>
      _GroupRegister01NameScreenState();
}

class _GroupRegister01NameScreenState extends State<GroupRegister01NameScreen> {
  final controller = TextEditingController();
  bool validation = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  textValidation(String text) {
    setState(() {
      validation = text.isNotEmpty;
    });
  }

  onNext() {
    BlocProvider.of<GroupRegisterBloc>(context)
        .add(GroupRegisterEvent.setName(controller.text));
    context.goNamed(GroupRegister02IntroduceScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: GroupRegisterNextButton(
        validation: validation,
        onTap: onNext,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const GroupRegisterTitle('스터디 이름', '을\n입력해 주세요.'),
            TextField(
              controller: controller,
              autofocus: true,
              decoration: const InputDecoration(),
              autocorrect: false,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
              onChanged: textValidation,
            ),
            const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
