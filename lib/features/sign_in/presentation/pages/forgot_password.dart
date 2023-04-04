import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_app_flutter/core/utils/collegro_icon.dart';
import 'package:twitter_app_flutter/core/utils/custom_container_widget.dart';
import 'package:twitter_app_flutter/features/assets/app_colors.dart';
import 'package:twitter_app_flutter/features/assets/app_text_styles.dart';
import 'package:twitter_app_flutter/features/sign_in/presentation/widgets/sign_in_widget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final Color primaryColor = AppColors.primaryButtonAndTextColor;
  TextEditingController forgotPasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 102.h, bottom: 30.h),
              child: UtilsCollegro().getCollegroIcon(),
            ),
            SizedBox(
              width: 163,
              child: Text(
                "Forgot Password.",
                style: AppTextStyles.body32w5.copyWith(
                  color: primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Please, enter your email below.",
              style: AppTextStyles.body16w6.copyWith(color: primaryColor),
            ),
            Padding(
              padding: EdgeInsets.only(top: 35.h, bottom: 30.h),
              child: SignInScreenWidget(
                text: "Email",
                width: 325,
                textAlignment: TextAlign.start,
                textPadding: EdgeInsets.only(left: 27.w),
                controller: forgotPasswordcontroller,
              ),
            ),
            CustomContainerWidget(
              width: 325,
              color: primaryColor,
              child: Text(
                "Next",
                style: AppTextStyles.body16w6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
