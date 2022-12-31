import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupRegisterTitle extends StatelessWidget {
  const GroupRegisterTitle(this.bold, this.text, {super.key});
  final String bold;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: bold,
              style: TextStyle(
                color: const Color(0xff000000),
                fontWeight: FontWeight.w600,
                fontFamily: "NotoSansKR",
                fontStyle: FontStyle.normal,
                fontSize: 34.0.sp,
                height: 1.5,
              )),
          TextSpan(
              text: text,
              style: TextStyle(
                color: const Color(0xff000000),
                fontWeight: FontWeight.w400,
                fontFamily: "NotoSansKR",
                fontStyle: FontStyle.normal,
                fontSize: 34.0.sp,
                height: 1.5,
              )),
        ],
      ),
    );
  }
}
