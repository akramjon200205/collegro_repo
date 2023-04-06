
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_app_flutter/features/assets/app_colors.dart';
import 'package:twitter_app_flutter/features/assets/app_text_styles.dart';
import 'package:twitter_app_flutter/features/assets/assets.dart';
import 'dart:math' as math;

import 'package:twitter_app_flutter/features/home_screen/presentation/widget/collegro_like_comment_share_widget.dart';

class CollegroPostWidget extends StatelessWidget {
  const CollegroPostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(                  
      width: 334.w,
      padding: EdgeInsets.only(
        top: 15.h,
        left: 14.w,
        right: 14.w,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.colorTextGreen.withOpacity(0.1),
            blurRadius: 18.r,
            offset: const Offset(0, 4),
          ),
        ],
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 32.w,
                    height: 32.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      Assets.images.imageAvatarFirst,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jacob Washington",
                        style: AppTextStyles.body14w6.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        "20m ago",
                        style: AppTextStyles.body12w4.copyWith(
                          color: const Color(0xff727477),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Transform.rotate(
                  angle: math.pi / 2,
                  child: Icon(
                    Icons.more_horiz,
                    size: 24.w,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            "“If you think you are too small to make a difference, try sleeping with a mosquito.”~ Dalai Lama",
            style: AppTextStyles.body16w4.copyWith(
              color: AppColors.black,
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CollegroLikeCommentShareWidget(
                    textIcon: Assets.icons.collegroLikeIcon,
                    number: 2245,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  CollegroLikeCommentShareWidget(
                    textIcon: Assets.icons.collegroCommentIcon,
                    number: 45,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  CollegroLikeCommentShareWidget(
                    textIcon: Assets.icons.collegroShareIcon,
                    number: 124,
                  ),
                ],
              ),
              Icon(
                Icons.bookmark_border,
                size: 20,
                color: AppColors.primaryButtonAndTextColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
