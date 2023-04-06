
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_app_flutter/features/assets/app_colors.dart';
import 'package:twitter_app_flutter/features/assets/app_text_styles.dart';

// ignore: must_be_immutable
class CollegroLikeCommentShareWidget extends StatelessWidget {
  CollegroLikeCommentShareWidget({
    required this.number,
    required this.textIcon,
    super.key,
  });
  String textIcon;
  int number;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          textIcon,
          width: 16.w,
          height: 16.w,
          fit: BoxFit.scaleDown,
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          "$number",
          style: AppTextStyles.body12w6.copyWith(
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
