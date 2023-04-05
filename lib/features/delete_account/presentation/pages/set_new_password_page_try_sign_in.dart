import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_app_flutter/core/utils/custom_container_widget.dart';
import 'package:twitter_app_flutter/core/utils/custom_text_field_widget.dart';
import 'package:twitter_app_flutter/features/assets/app_colors.dart';
import 'package:twitter_app_flutter/features/assets/app_text_styles.dart';

import '../../../../core/utils/collegro_icon.dart';

class SetNewPasswordTrySignIn extends StatefulWidget {
  const SetNewPasswordTrySignIn({super.key});

  @override
  State<SetNewPasswordTrySignIn> createState() => _SetNewPasswordTrySignInState();
}

class _SetNewPasswordTrySignInState extends State<SetNewPasswordTrySignIn> {
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
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 126.h,
              ),
              UtilsCollegro().getCollegroIcon(),
              Padding(
                padding: EdgeInsets.only(
                  top: 34.h,
                  bottom: 33.h,
                ),
                child: Text(
                  "Please, try signing-in into\nyour account.",
                  style: AppTextStyles.body14w6.copyWith(
                    color: AppColors.primaryButtonAndTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              CustomTextFieldWidget(
                text: "Email",
                width: 325,
                textAlignment: TextAlign.start,
                textPadding: const EdgeInsets.only(left: 20),
                controller: emailController,
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomTextFieldWidget(
                text: "Password",
                width: 325,
                textAlignment: TextAlign.start,
                textPadding: const EdgeInsets.only(left: 20),
                controller: emailController,
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomContainerWidget(
                width: 325,
                color: AppColors.primaryButtonAndTextColor,
                child: Text(
                  "Sign In",
                  style: AppTextStyles.body18w6,
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sorry, this account doesn’t exist. Please try\nsigning-up for an account.",
                  style: AppTextStyles.body14w4.copyWith(
                    color: AppColors.primaryButtonAndTextColor,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 76.h,
              ),
              Text(
                "Create an account.",
                style: AppTextStyles.body14w6.copyWith(
                  color: AppColors.primaryButtonAndTextColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
