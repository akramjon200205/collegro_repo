
// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../assets/app_text_styles.dart';

// ignore: must_be_immutable
class SignInAndUp extends StatelessWidget {
  SignInAndUp({
    required this.text,
    required this.function,
    super.key,
  });

  String text;
  Function function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => function(),
      child: Container(
        height: 59.h,
        width: 314.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xff002029),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Text(
          text,
          style: AppTextStyles.body18w6.copyWith(
            color: const Color(0xff1DFBD3),
          ),
        ),
      ),
    );
  }
}
