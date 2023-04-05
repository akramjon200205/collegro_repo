import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_app_flutter/core/utils/custom_container_widget.dart';
import 'package:twitter_app_flutter/core/utils/custom_text_field_widget.dart';
import 'package:twitter_app_flutter/features/assets/app_colors.dart';
import 'package:twitter_app_flutter/features/assets/app_text_styles.dart';

import '../../../../core/utils/collegro_icon.dart';

class EnterEmail extends StatefulWidget {
  const EnterEmail({super.key});

  @override
  State<EnterEmail> createState() => _EnterEmailState();
}

class _EnterEmailState extends State<EnterEmail> {
  final primaryColor = AppColors.primaryButtonAndTextColor;
  late TextEditingController reEnterPasswordController;
  @override
  void initState() {
    super.initState();
    reEnterPasswordController = TextEditingController();
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
                top: 144.h,
              ),
              child: UtilsCollegro().getCollegroIcon(),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: 157.w,
              child: Text(
                "Are you sure you want\nto do this?",
                style: AppTextStyles.body14w6.copyWith(
                  color: primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            CustomTextFieldWidget(
              controller: reEnterPasswordController,
              text: "Re-enter Password",
              textAlignment: TextAlign.start,
              textPadding: const EdgeInsets.only(left: 20),
              width: 325,
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomContainerWidget(
              width: 325,
              color: primaryColor,
              child: Text(
                "Yes",
                style: AppTextStyles.body18w6,
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            CustomContainerWidget(
              width: 325,
              color: primaryColor,
              child: Text(
                "No",
                style: AppTextStyles.body18w6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
