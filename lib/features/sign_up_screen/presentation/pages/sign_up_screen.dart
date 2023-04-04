import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_app_flutter/core/utils/collegro_icon.dart';

import '../../../../core/utils/custom_container_widget.dart';
import '../../../assets/app_colors.dart';
import '../../../assets/app_text_styles.dart';
import '../widgets/sign_up_screen_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 86.h, horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              UtilsCollegro().getCollegroIcon(),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Sign Up",
                style: AppTextStyles.body32w5.copyWith(
                  color: AppColors.primaryButtonAndTextColor,
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SignUpScreenWidget(
                    controller: firstController,
                    text: 'First Name',
                    width: 155,
                    textAlignment: TextAlign.center,
                    textPadding: EdgeInsets.zero,
                  ),
                  SignUpScreenWidget(
                    controller: lastController,
                    text: 'Last Name',
                    width: 155,
                    textAlignment: TextAlign.center,
                    textPadding: EdgeInsets.zero,
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              SignUpScreenWidget(
                text: 'Email',
                width: 325,
                controller: emailController,
                textAlignment: TextAlign.start,
                textPadding: EdgeInsets.only(left: 25.w),
              ),
              SizedBox(
                height: 15.h,
              ),
              SignUpScreenWidget(
                text: 'Password',
                width: 325,
                controller: passwordController,
                textAlignment: TextAlign.start,
                textPadding: EdgeInsets.only(left: 25.w),
              ),
              SizedBox(
                height: 24.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: Text(
                    "*email must be of an educational Institute.",
                    style: AppTextStyles.body12w6.copyWith(
                      color: AppColors.primaryButtonAndTextColor,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 32.w,
                    height: 32.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 25,
                          offset: const Offset(0, 6),
                          color: AppColors.primaryButtonAndTextColor.withOpacity(0.25),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Checkbox(
                      fillColor: MaterialStateProperty.all(
                        const Color(0xffFFFFFF),
                      ),
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      checkColor: AppColors.primaryButtonAndTextColor,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "I agree with ",
                        style: AppTextStyles.body12w4.copyWith(
                          color: AppColors.primaryButtonAndTextColor,
                        ),
                      ),
                      Text(
                        "Terms & Conditions.",
                        style: AppTextStyles.body12w6.copyWith(
                          color: AppColors.primaryButtonAndTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: CustomContainerWidget(
                  width: 325,
                  margin: EdgeInsets.only(top: 30.h, bottom: 66.h),
                  color: AppColors.primaryButtonAndTextColor,
                  child: Text(
                    "Sign Up",
                    style: AppTextStyles.body18w6,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "I already have an account.",
                  style: AppTextStyles.body12w6.copyWith(
                    color: AppColors.primaryButtonAndTextColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),              
            ],
          ),
        ),
      ),
    );
  }
}
