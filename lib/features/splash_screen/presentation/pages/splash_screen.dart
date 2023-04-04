import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/collegro_icon.dart';
import '../widgets/gradient_text.dart';
import '../../../assets/app_colors.dart';
import '../../../assets/app_text_styles.dart';
import '../../../assets/assets.dart';

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
                UtilsCollegro().getCollegroIcon(),
                SizedBox(
                  height: 30.h,
                ),
                GradientText(
                  'collegro',
                  style: TextStyle(fontSize: 44.sp, fontWeight: FontWeight.w700),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.colorTextGreen,
                      AppColors.primaryButtonAndTextColor,
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
