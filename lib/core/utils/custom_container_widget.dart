// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomContainerWidget extends StatelessWidget {
  Color color;
  Widget child;
  double width;
  double height;  
  Alignment alignment;
  BoxShadow? boxShadow;
  EdgeInsets margin;  

  CustomContainerWidget({
    Key? key,
    required this.color,
    required this.child,
    this.width = 314,
    this.height = 59,    
    this.alignment = Alignment.center,
    this.boxShadow,
    this.margin = EdgeInsets.zero,    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
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
      child: child,
    );
  }
}
