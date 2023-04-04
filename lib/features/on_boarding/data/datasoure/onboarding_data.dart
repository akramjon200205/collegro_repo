

import '../../../assets/assets.dart';
import '../models/onboarding_model.dart';

class OnboardingDataSource {
  OnboardingDataSource();    

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
