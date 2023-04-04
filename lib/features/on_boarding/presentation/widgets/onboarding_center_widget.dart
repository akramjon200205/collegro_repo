// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../assets/app_text_styles.dart';

// ignore: must_be_immutable
class OnBoardingWidget extends StatelessWidget {
  String pictureAssetsText;
  String pictureText;
  String onBoardingText;
  double size;

  OnBoardingWidget({
    Key? key,
    required this.pictureAssetsText,
    required this.pictureText,
    required this.onBoardingText,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Container(
          height: 300,
          width: 300,
          alignment: Alignment.center,
          child: Image.asset(
            pictureAssetsText,
            width: size.w,
            height: size.w,
            fit: BoxFit.scaleDown,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                pictureText,
                style: AppTextStyles.body18w6.copyWith(
                  color: const Color(0xff1E9BD4),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 21.h,
        ),
        Container(
          width: 274.w,
          alignment: Alignment.center,
          child: Text(
            onBoardingText,
            style: AppTextStyles.body16w5.copyWith(
              color: const Color(0xff838383),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
