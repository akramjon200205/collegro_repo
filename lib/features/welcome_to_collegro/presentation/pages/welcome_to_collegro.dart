import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../assets/app_text_styles.dart';
import '../../../assets/assets.dart';
import '../wodgets/sign_in_and_up.dart';

class WelcomeToCollegroPage extends StatelessWidget {
  const WelcomeToCollegroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.images.collegroWelcomeImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 176.h,
            bottom: 61.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    Assets.icons.collegroIcon,
                    height: 71.w,
                    width: 79.w,
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(
                    height: 39.h,
                  ),
                  Text(
                    "Welcome to",
                    style: AppTextStyles.body22w7.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "collegro",
                    style: AppTextStyles.body22w7.copyWith(
                      fontSize: 44.sp,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SignInAndUp(
                    text: 'Sign In',
                    function: () {},
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  SignInAndUp(
                    text: 'Sign Up',
                    function: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
