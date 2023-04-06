import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_app_flutter/core/utils/collegro_icon.dart';
import 'package:twitter_app_flutter/core/utils/custom_container_widget.dart';
import 'package:twitter_app_flutter/features/assets/app_colors.dart';
import 'package:twitter_app_flutter/features/assets/app_text_styles.dart';

import '../../../../core/utils/custom_text_field_widget.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
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
                top: 130.h,
                bottom: 30.h,
              ),
              child: UtilsCollegro().getCollegroIcon(),
            ),
            Text(
              "Please, enter your old password.",
              style: AppTextStyles.body14w6.copyWith(
                color: AppColors.primaryButtonAndTextColor,
              ),
            ),
            SizedBox(
              height: 49.h,
            ),
            CustomTextFieldWidget(
              controller: controller,
              text: "Old Password",
              textAlignment: TextAlign.start,
              textPadding: const EdgeInsets.only(left: 20),
              width: 325,
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomContainerWidget(
              width: 325,
              color: AppColors.primaryButtonAndTextColor,
              child: Text(
                "Coniform",
                style: AppTextStyles.body18w6,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomContainerWidget(
              width: 325,
              color: AppColors.primaryButtonAndTextColor,
              child: Text(
                "Cancel",
                style: AppTextStyles.body18w6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
