
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_app_flutter/features/assets/app_colors.dart';
import 'package:twitter_app_flutter/features/assets/assets.dart';

class UserHistoryAvatarWidget extends StatelessWidget {
  const UserHistoryAvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){ },
      child: Container(
        width: 58.w,
        height: 58.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Stack(
          children: [
            Image.asset(
              Assets.images.imageAvatarFirst,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 16.w,
                height: 16.w,
                margin: EdgeInsets.only(bottom: 4.w),
                decoration: BoxDecoration(
                  color: AppColors.black,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  Assets.icons.plusIconAvatar,
                  width: 8.w,
                  height: 8.w,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
