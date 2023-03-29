import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_app_flutter/data/models/onboarding_model.dart';

import '../../presentation/constants/assets.dart';

class OnboardingDataSource {
  OnboardingDataSource();
  getCollegroIcon() {
    return SvgPicture.asset(
      Assets.icons.collegroIcon,
      height: 79.w,
      width: 71.w,
      fit: BoxFit.scaleDown,
    );
  }

  List<OnBoardingModel> onBoardingData = [
    OnBoardingModel(
      pictureAssetsText: Assets.images.onBoardingFirstCenterImage,
      pictureText: "Take Pictures\nMake Memories",
      onBoardingText: "We believe your college or\nuniversity memories are\nimportant to you.",
      size: 300,
    ),
    OnBoardingModel(
      pictureAssetsText: Assets.images.onBoardingSecondCenterImage,
      pictureText: "Save Pictures.\nSave Memories.",
      onBoardingText: "We believe in making &\nsaving memories.",
      size: 300,
    ),
    OnBoardingModel(
      pictureAssetsText: Assets.images.onBoardingThirdCenterImage,
      pictureText: "Privacy Protection is\nour first Priority.",
      onBoardingText: "Our Priority is your privacy.\nYour images will be shared\nwithout your consent.",
      size: 250,
    ),
    OnBoardingModel(
      pictureAssetsText: Assets.images.onBoardingFourthCenterImage,
      pictureText: "Free Unlimited\nStorage Space.",
      onBoardingText: "We offer free unlimited storage\nspace to save your memories.",
      size: 220,
    ),
  ];
}
