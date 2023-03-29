import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_app_flutter/presentation/constants/app_text_styles.dart';
import 'package:twitter_app_flutter/presentation/constants/assets.dart';
import 'package:twitter_app_flutter/presentation/widgets/onboarding_align_image.dart';

import '../../data/datasource/onboarding_data.dart';
import '../constants/app_colors.dart';
import '../widgets/gradient_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [        
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              Assets.images.startAppTopImage,
              height: 200,
              fit: BoxFit.scaleDown,
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnboardingDataSource().getCollegroIcon(),
                SizedBox(
                  height: 30.h,
                ),
                GradientText(
                  'collegro',
                  style: TextStyle(fontSize: 44.sp, fontWeight: FontWeight.w700),
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.colorTextGreen,
                      AppColors.colorTextBlue,
                    ],
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Text(
                  'We Save Memories.',
                  style: AppTextStyles.body22w4.copyWith(
                    color: AppColors.primaryButtonAndTextColor,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SvgPicture.asset(
              Assets.images.startAppBottomImage,
            ),
          ),
        ],
      ),
    );
  }
}
