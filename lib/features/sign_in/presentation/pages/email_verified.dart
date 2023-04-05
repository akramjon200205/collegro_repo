import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_app_flutter/core/utils/collegro_icon.dart';
import 'package:twitter_app_flutter/core/utils/custom_container_widget.dart';
import 'package:twitter_app_flutter/features/assets/app_colors.dart';
import 'package:twitter_app_flutter/features/assets/app_text_styles.dart';

class EmailVerified extends StatefulWidget {
  const EmailVerified({super.key});

  @override
  State<EmailVerified> createState() => _EmailVerifiedState();
}

class _EmailVerifiedState extends State<EmailVerified> {
  final primaryColor = AppColors.primaryButtonAndTextColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UtilsCollegro().getCollegroIcon(),
            SizedBox(
              height: 26.h,
            ),
            SizedBox(
              width: 229.w,
              child: Text(
                "Congratulations! Your password has been successfully changed. Try Signing in now.",
                style: AppTextStyles.body14w6.copyWith(
                  color: primaryColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 45.h),
              child: CustomContainerWidget(
                color: primaryColor,
                child: Text(
                  "Sign In",
                  style: AppTextStyles.body18w6.copyWith(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
