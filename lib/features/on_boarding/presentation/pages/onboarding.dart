import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_app_flutter/features/on_boarding/presentation/widgets/onboarding_align_image.dart';

import '../../../../core/utils/collegro_icon.dart';
import '../../../assets/app_colors.dart';
import '../../../assets/app_text_styles.dart';
import '../../../assets/assets.dart';
import '../../data/datasoure/onboarding_data.dart';
import '../widgets/custom_on_tap_container.dart';
import '../widgets/on_boarding_indicator.dart';
import '../widgets/on_boarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController controller;
  var onControllerCurrentPageValue = 0.0;
  OnboardingDataSource onboardingDataSource = OnboardingDataSource();

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
      body: Stack(
        children: [
          Column(
            children: [
              pageImageTop(onControllerCurrentPageValue.round()),
              Expanded(
                  flex: 3,
                  child: PageView.builder(
                    controller: controller,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      if (index < 4) {
                        return OnBoardingWidget(
                          pictureAssetsText: onboardingDataSource.onBoardingData[index].pictureAssetsText,
                          pictureText: onboardingDataSource.onBoardingData[index].pictureText,
                          onBoardingText: onboardingDataSource.onBoardingData[index].onBoardingText,
                          size: onboardingDataSource.onBoardingData[index].size,
                        );
                      }
                      if (index == 4) {
                        return const LetsWidget();
                      }
                    },
                  )),
              pageImageBottom(onControllerCurrentPageValue.round()),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 50.h),
              child: OnBoardingIndicatorWidget(
                controller: controller,
                pageCount: onControllerCurrentPageValue.round(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LetsWidget extends StatelessWidget {
  const LetsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        UtilsCollegro().getCollegroIcon(),
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
        CustomOnTapContainer(
          text: "Sign In",
          function: () {},
        ),
        SizedBox(
          height: 29.h,
        ),
        CustomOnTapContainer(
          text: "Sign Out",
          function: () {},
        ),       
      ],
    );
  }
}
