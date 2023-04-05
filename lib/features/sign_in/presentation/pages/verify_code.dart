import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_app_flutter/core/utils/collegro_icon.dart';
import 'package:twitter_app_flutter/core/utils/custom_container_widget.dart';
import 'package:twitter_app_flutter/features/assets/app_colors.dart';
import 'package:twitter_app_flutter/features/assets/app_text_styles.dart';

import '../../../../core/utils/custom_text_field_widget.dart';

class VerifyCode extends StatefulWidget {
  const VerifyCode({super.key});

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  late TextEditingController verifyCodeController;
  final Color primaryColor = AppColors.primaryButtonAndTextColor;

  @override
  void initState() {
    super.initState();
    verifyCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 116.h,
                bottom: 32.h,
              ),
              child: UtilsCollegro().getCollegroIcon(),
            ),
            Text(
              "Verify Code.",
              style: AppTextStyles.body32w5.copyWith(
                color: primaryColor,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: 273.w,
              child: Text(
                "Please, enter the verification code you’ve received on your email.",
                style: AppTextStyles.body16w6.copyWith(
                  color: primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            CustomTextFieldWidget(
              text: "XXXX",
              width: 325,
              textAlignment: TextAlign.start,
              textPadding: EdgeInsets.only(left: 25.w),
              controller: verifyCodeController,
            ),
            CustomContainerWidget(
              margin: EdgeInsets.only(
                top: 30.h,
                bottom: 32.h,
              ),
              color: primaryColor,
              child: Text(
                "Next",
                style: AppTextStyles.body18w6,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "I didn’t receive any code. Please, Re-send code.",
                style: AppTextStyles.body12w4.copyWith(
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
