import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_app_flutter/core/utils/collegro_icon.dart';
import 'package:twitter_app_flutter/core/utils/custom_container_widget.dart';
import 'package:twitter_app_flutter/features/assets/app_colors.dart';
import 'package:twitter_app_flutter/features/assets/app_text_styles.dart';
import 'package:twitter_app_flutter/features/sign_in/presentation/widgets/sign_in_widget.dart';

class SetNewPasword extends StatefulWidget {
  const SetNewPasword({super.key});

  @override
  State<SetNewPasword> createState() => _SetNewPaswordState();
}

class _SetNewPaswordState extends State<SetNewPasword> {
  final Color primaryColor = AppColors.primaryButtonAndTextColor;
  late TextEditingController newPasswordController;
  late TextEditingController coniformNewPasswordController;

  @override
  void initState() {
    super.initState();
    newPasswordController = TextEditingController();
    coniformNewPasswordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 121.h,
              ),
              child: UtilsCollegro().getCollegroIcon(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 26.h),
              child: SizedBox(
                width: 163.w,
                child: Text(
                  "Set New Password.",
                  style: AppTextStyles.body32w5.copyWith(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            SignInScreenWidget(
              text: "New Password",
              width: 325,
              textAlignment: TextAlign.start,
              textPadding: const EdgeInsets.only(left: 25),
              controller: newPasswordController,
            ),
            SizedBox(
              height: 15.h,
            ),
            SignInScreenWidget(
              text: "Confirm New Password",
              width: 325,
              textAlignment: TextAlign.start,
              textPadding: const EdgeInsets.only(left: 25),
              controller: coniformNewPasswordController,
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomContainerWidget(
              width: 325.w,
              color: primaryColor,
              child: Text(
                "Next",
                style: AppTextStyles.body18w6.copyWith(
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
  