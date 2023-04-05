import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_app_flutter/core/utils/custom_container_widget.dart';
import 'package:twitter_app_flutter/features/assets/app_colors.dart';
import 'package:twitter_app_flutter/features/assets/app_text_styles.dart';

import '../../../../core/utils/collegro_icon.dart';
import '../../../../core/utils/custom_text_field_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final Color primaryColor = AppColors.primaryButtonAndTextColor;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25.w,
          vertical: 104.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UtilsCollegro().getCollegroIcon(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h),
              child: Text(
                "Sign In",
                style: AppTextStyles.body32w5.copyWith(
                  color: primaryColor,
                ),
              ),
            ),
            CustomTextFieldWidget(
              controller: emailController,
              text: "Email",
              textAlignment: TextAlign.start,
              textPadding: const EdgeInsets.only(
                left: 25,
              ),
              width: 325,
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomTextFieldWidget(
              text: "Password",
              width: 325,
              textAlignment: TextAlign.start,
              textPadding: const EdgeInsets.only(left: 25),
              controller: passwordController,
            ),
            SizedBox(
              height: 21.h,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Forgot Password?",
                style: AppTextStyles.body12w6.copyWith(
                  color: primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            InkWell(
              onTap: () {},
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
            SizedBox(
              height: 63.h,
            ),
            Text(
              "I don’t have any account. Let’s Sign Up",
              style: AppTextStyles.body12w5.copyWith(
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
