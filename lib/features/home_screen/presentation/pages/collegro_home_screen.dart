import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_app_flutter/features/assets/app_colors.dart';
import 'package:twitter_app_flutter/features/assets/app_text_styles.dart';
import 'package:twitter_app_flutter/features/assets/assets.dart';
import 'package:twitter_app_flutter/features/home_screen/presentation/widget/collegro_post_widget.dart';
import 'package:twitter_app_flutter/features/home_screen/presentation/widget/user_history_avatar_widget.dart';
import 'package:twitter_app_flutter/features/home_screen/presentation/widget/users_history_widget.dart';

class CollegroHomeScreen extends StatefulWidget {
  const CollegroHomeScreen({super.key});

  @override
  State<CollegroHomeScreen> createState() => _CollegroHomeScreenState();
}

class _CollegroHomeScreenState extends State<CollegroHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.w,
                    right: 24.w,
                    top: 16.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Good Morning, Marusa.",
                        style: AppTextStyles.body18w5.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          Assets.icons.dispatchIcon,
                          width: 24.w,
                          height: 24.w,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 15.h),
                    margin: EdgeInsets.zero.copyWith(left: 21.w, right: 21.w),
                    height: 88.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      color: AppColors.white,
                    ),
                    child: Row(
                      children: [
                        const UserHistoryAvatarWidget(),
                        SizedBox(
                          width: 7.w,
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          itemCount: 20,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return const UsersHistoryWidget();
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: 7.w,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                const CollegroPostWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
