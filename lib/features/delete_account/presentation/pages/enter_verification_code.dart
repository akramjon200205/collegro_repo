import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_app_flutter/features/assets/app_colors.dart';
import 'package:twitter_app_flutter/features/assets/app_text_styles.dart';

import '../../../../core/utils/collegro_icon.dart';
import '../../../../core/utils/custom_container_widget.dart';

class EnterVerificationCode extends StatefulWidget {
  const EnterVerificationCode({super.key});

  @override
  State<EnterVerificationCode> createState() => _EnterVerificationCodeState();
}

class _EnterVerificationCodeState extends State<EnterVerificationCode> {
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
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 26.h,
              ),
              child: Text(
                "Congrats!",
                style: AppTextStyles.body32w5.copyWith(
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                ),
              ),
            ),
            Text(
              "Your account has been\ndeleted successfully!",
              style: AppTextStyles.body14w6.copyWith(
                color: primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 36.h,
            ),
            CustomContainerWidget(
              width: 325,
              color: primaryColor,
              child: Text(
                "Great!",
                style: AppTextStyles.body18w6,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
