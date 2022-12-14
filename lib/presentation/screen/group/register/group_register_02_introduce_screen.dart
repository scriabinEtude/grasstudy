import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grasstudy_client/bloc/group/bloc/group_register_bloc.dart';
import 'package:grasstudy_client/bloc/group/bloc/group_register_event.dart';
import 'package:grasstudy_client/presentation/screen/group/register/components/group_register_next_button.dart';
import 'package:grasstudy_client/presentation/screen/group/register/components/group_register_title.dart';
import 'package:go_router/go_router.dart';
import 'package:grasstudy_client/presentation/screen/group/register/group_register_03_tag_screen.dart';

class GroupRegister02IntroduceScreen extends StatefulWidget {
  const GroupRegister02IntroduceScreen({super.key});

  static const String routeName = "/group/register/introduce";

  @override
  State<GroupRegister02IntroduceScreen> createState() =>
      _GroupRegister02IntroduceScreenState();
}

class _GroupRegister02IntroduceScreenState
    extends State<GroupRegister02IntroduceScreen> {
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
        .add(GroupRegisterEvent.setIntroduce(controller.text));
    context.goNamed(GroupRegister03TagScreen.routeName);
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const GroupRegisterTitle('소개', '를\n입력해 주세요.'),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Color(0x0d000000)),
              child: TextField(
                controller: controller,
                autofocus: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                autocorrect: false,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
                onChanged: textValidation,
                maxLines: 5,
              ),
            ),
            const SizedBox.shrink(),
            const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
