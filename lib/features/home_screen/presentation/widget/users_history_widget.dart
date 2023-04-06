import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_app_flutter/features/assets/app_colors.dart';
import 'package:twitter_app_flutter/features/assets/assets.dart';

class UsersHistoryWidget extends StatelessWidget {
  const UsersHistoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 58.w,
        height: 58.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: AppColors.avatarGradient,
        ),
        child: Stack(
          children: [
            Container(
              width: 56.w,
              height: 56.w,
              padding: EdgeInsets.all(4.w),
              margin: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.black,
              ),
              child: Image.asset(
                Assets.images.imageAvatarFirst,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
