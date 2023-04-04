import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_app_flutter/core/utils/collegro_icon.dart';

import '../../../../core/utils/custom_container_widget.dart';
import '../../../assets/app_colors.dart';
import '../../../assets/app_text_styles.dart';
import '../widgets/sign_up_screen_widget.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  late TextEditingController controller;
  final Color primaryColor = AppColors.primaryButtonAndTextColor;
  @override
  void initState() {    
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25.w,
          vertical: 91.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UtilsCollegro().getCollegroIcon(),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 22.h,
              ),
              child: Text(
                "Verify Email",
                style: AppTextStyles.body32w5.copyWith(
                  color: primaryColor,
                ),
              ),
            ),
            Text(
              "Please, enter the verification code\nyou’ve received on your email.",
              style: AppTextStyles.body16w6.copyWith(
                color: primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 32.h,
            ),
            SignUpScreenWidget(
              text: "XXXX",
              width: 325,
              textAlignment: TextAlign.start,
              textPadding: const EdgeInsets.only(left: 24),
              controller: controller,
            ),
            SizedBox(
              height: 21.h,
            ),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                child: Row(
                  children: [
                    Text(
                      "I didn’t receive any code. ",
                      style: AppTextStyles.body12w4.copyWith(
                        color: primaryColor,
                      ),
                    ),
                    Text(
                      "Please, Re-send code.",
                      style: AppTextStyles.body12w6.copyWith(
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
