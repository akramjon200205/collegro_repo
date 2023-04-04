
// ignore: must_be_immutable
import 'package:flutter/material.dart';

import '../../../../core/utils/custom_container_widget.dart';
import '../../../assets/app_colors.dart';
import '../../../assets/app_text_styles.dart';

// ignore: must_be_immutable
class CustomOnTapContainer extends StatelessWidget {
  String text;
  Function function;
  CustomOnTapContainer({
    Key? key,
    required this.text,    
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> function,
      child: CustomContainerWidget(
        color: AppColors.primaryButtonAndTextColor,
        child: Text(
          text,
          style: AppTextStyles.body18w6,
        ),
      ),
    );
  }
}
