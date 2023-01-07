import 'package:flutter/material.dart';
import 'package:grasstudy_client/presentation/color/light_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupRegisterNextButton extends StatelessWidget {
  const GroupRegisterNextButton({
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
          width: 80.w,
          height: 35.h,
          decoration: BoxDecoration(
            color: lightColorTheme.tertiaryColor,
            borderRadius: BorderRadius.circular(20.sp),
          ),
          child: Center(
              child: Text(
            '다음',
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
