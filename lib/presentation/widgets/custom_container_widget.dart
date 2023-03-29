import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomContainerWidget extends StatelessWidget {
  Color color;
  String text;
  double width;
  double height;
  TextStyle style;
  Alignment alignment;
  BoxShadow? boxShadow;

  CustomContainerWidget({
    Key? key,
    required this.color,
    required this.text,
    this.width = 314,
    this.height = 59,
    required this.style,
    this.alignment = Alignment.center,
    this.boxShadow
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      alignment: alignment,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          boxShadow ?? const BoxShadow(),
        ],
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
