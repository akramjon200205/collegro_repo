// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:twitter_app_flutter/presentation/constants/app_colors.dart';
import 'package:twitter_app_flutter/presentation/widgets/onboarding_align_image.dart';

import '../../data/datasource/onboarding_data.dart';
import '../constants/app_text_styles.dart';
import '../constants/assets.dart';
import '../widgets/custom_container_widget.dart';
import '../widgets/onboarding/on_boarding_indicator.dart';
import '../widgets/onboarding/onboarding_center_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController controller;
  var onControllerCurrentPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
    controller.addListener(() {
      setState(() {
        onControllerCurrentPageValue = controller.page!;
      });
    });
  }

  Widget pageImageTop(int number) {
    if (number % 2 == 0) {
      return OnBoardingAlignImage(
        textImage: Assets.images.onBoardingFirstScreenImageFirst,
        width: 150.w,
        height: 150.w,
        alignment: Alignment.topLeft,
      );
    } else {
      return OnBoardingAlignImage(
        textImage: Assets.images.onBoardingSecondScreenImageFirst,
        width: 150.w,
        height: 150.w,
        alignment: Alignment.topRight,
      );
    }
  }

  Widget pageImageBottom(int number) {
    if (number % 2 == 0) {
      return OnBoardingAlignImage(
        textImage: Assets.images.onBoardingFirstScreenImageSecond,
        height: 150.w,
        width: 150.w,
        alignment: Alignment.bottomRight,
      );
    } else {
      return OnBoardingAlignImage(
        textImage: Assets.images.onBoardingSecondScreenImageSecond,
        width: 150.w,
        height: 150.w,
        alignment: Alignment.bottomLeft,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          pageImageTop(onControllerCurrentPageValue.round()),
          Expanded(
            flex: 3,
            child: PageView(
              controller: controller,                           
              children: [
                OnBoardingWidget(
                  pictureAssetsText: Assets.images.onBoardingFirstCenterImage,
                  pictureText: "Take Pictures\nMake Memories",
                  onBoardingText: "We believe your college or\nuniversity memories are\nimportant to you.",
                  size: 300,
                ),
                OnBoardingWidget(
                  pictureAssetsText: Assets.images.onBoardingSecondCenterImage,
                  pictureText: "Save Pictures.\nSave Memories.",
                  onBoardingText: "We believe in making &\nsaving memories.",
                  size: 300,
                ),
                OnBoardingWidget(
                  pictureAssetsText: Assets.images.onBoardingThirdCenterImage,
                  pictureText: "Privacy Protection is\nour first Priority.",
                  onBoardingText: "Our Priority is your privacy.\nYour images will be shared\nwithout your consent.",
                  size: 250,
                ),
                OnBoardingWidget(
                  pictureAssetsText: Assets.images.onBoardingFourthCenterImage,
                  pictureText: "Free Unlimited\nStorage Space.",
                  onBoardingText: "We offer free unlimited storage\nspace to save your memories.",
                  size: 220,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OnboardingDataSource().getCollegroIcon(),
                    SizedBox(
                      height: 44.h,
                    ),
                    Text(
                      "Let’s",
                      style: AppTextStyles.body37w5.copyWith(
                        color: AppColors.primaryButtonAndTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 39.h,
                    ),
                    CustomContainerWidget(
                      color: AppColors.primaryButtonAndTextColor,
                      style: AppTextStyles.body18w6,
                      text: "Sign In",
                    ),
                    SizedBox(
                      height: 29.h,
                    ),
                    CustomContainerWidget(
                      color: AppColors.primaryButtonAndTextColor,
                      style: AppTextStyles.body18w6,
                      text: "Sign Out",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              pageImageBottom(onControllerCurrentPageValue.round()),
              OnBoardingIndicatorWidget(
                controller: controller,
                pageCount: onControllerCurrentPageValue.round(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
