// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:twitter_app_flutter/core/utils/custom_container_widget.dart';

import '../../../../core/utils/collegro_icon.dart';
import '../../../assets/app_colors.dart';
import '../../../assets/app_text_styles.dart';

class WhoAreYouPage extends StatelessWidget {
  const WhoAreYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UtilsCollegro().getCollegroIcon(),
            SizedBox(
              height: 31.h,
            ),
            Text(
              "Who are you?",
              style: AppTextStyles.body18w5.copyWith(
                color: AppColors.primaryButtonAndTextColor,
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            SignUpWidget(
              function: () {},
              text: 'I’m a Student',
            ),
            SignUpWidget(
              function: () {},
              text: 'I’m a Teacher',
            ),
            SignUpWidget(
              function: () {},
              text: 'I’m an Institute',
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SignUpWidget extends StatelessWidget {
  String text;
  Function function;
  SignUpWidget({
    Key? key,
    required this.text,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => function,
      child: CustomContainerWidget(
        margin: EdgeInsets.symmetric(
          vertical: 10.h,
        ),
        color: AppColors.primaryButtonAndTextColor,
        boxShadow: BoxShadow(
          color: const Color(0xff000000).withOpacity(.15),
          offset: const Offset(0, 8),
          blurRadius: 25,
        ),
        child: Text(
          text,
          style: AppTextStyles.body18w6,
        ),
      ),
    );
  }
}
