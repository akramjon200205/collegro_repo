import 'package:flutter/material.dart';
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
  final Color primaryColor = AppColors.primaryButtonAndTextColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UtilsCollegro().getCollegroIcon(),
            Padding(
              padding: EdgeInsets.only(
                top: 37.h,
                bottom: 54.h,
              ),
              child: Text(
                "Congratulations!\nyour email has been verified.",
                style: AppTextStyles.body18w6.copyWith(
                  color: primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            CustomContainerWidget(
              color: primaryColor,
              child: Text(
                "Next",
                style: AppTextStyles.body18w6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
