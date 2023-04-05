import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/custom_container_widget.dart';
import '../../features/assets/app_colors.dart';
import '../../features/assets/app_text_styles.dart';

// ignore: must_be_immutable
class CustomTextFieldWidget extends StatelessWidget {
  String text;
  double width;
  TextAlign textAlignment;
  EdgeInsets textPadding;
  final TextEditingController controller;
  CustomTextFieldWidget({
    Key? key,
    required this.text,
    required this.width,
    required this.textAlignment,
    required this.textPadding,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      width: width,
      boxShadow: BoxShadow(
        blurRadius: 25.r,
        offset: const Offset(0, 6),
        color: AppColors.primaryButtonAndTextColor.withOpacity(.15),
      ),
      color: Colors.white,
      child: TextField(
        autocorrect: false,
        enableSuggestions: false,
        controller: controller,
        textAlign: textAlignment,
        style: AppTextStyles.body16w4.copyWith(
          color: AppColors.primaryButtonAndTextColor,
        ),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          
          hintText: text,
          hintStyle: AppTextStyles.body16w4.copyWith(
            color: AppColors.primaryButtonAndTextColor,
          ),
          contentPadding: textPadding,
        ),
      ),
    );
  }
}
