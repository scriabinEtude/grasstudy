import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grasstudy_client/presentation/color/light_color.dart';

class GroupRegisterSubmitButton extends StatelessWidget {
  const GroupRegisterSubmitButton({
    super.key,
    required this.validation,
    required this.onTap,
  });

  final bool validation;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: validation ? 1 : 0.3,
      child: InkWell(
        onTap: validation ? onTap : null,
        child: Container(
          height: 60.h,
          decoration: BoxDecoration(
            color: lightColorTheme.tertiaryColor,
          ),
          child: Center(
              child: Text(
            '완료',
            style: TextStyle(
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          )),
        ),
      ),
    );
  }
}
