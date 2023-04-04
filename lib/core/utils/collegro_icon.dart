import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../features/assets/assets.dart';

class UtilsCollegro {
  UtilsCollegro();

  getCollegroIcon() {
    return SvgPicture.asset(
      Assets.icons.collegroIcon,
      height: 79.w,
      width: 71.w,
      fit: BoxFit.scaleDown,
    );
  }
}
