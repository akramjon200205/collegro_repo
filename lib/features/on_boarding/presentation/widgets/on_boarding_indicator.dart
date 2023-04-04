// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingIndicatorWidget extends StatefulWidget {
  final PageController controller;
  int pageCount;
  OnBoardingIndicatorWidget({
    Key? key,
    required this.controller,
    required this.pageCount,
  }) : super(key: key);

  @override
  State<OnBoardingIndicatorWidget> createState() => _OnBoardingIndicatorWidgetState();
}

class _OnBoardingIndicatorWidgetState extends State<OnBoardingIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Opacity(
            opacity: widget.pageCount == 4 ? 0 : 1,
            child: SmoothPageIndicator(
              controller: widget.controller,
              count: 4,
              effect: WormEffect(
                spacing: 10.w,
                dotColor: const Color(0xff1E9BD4).withOpacity(0.4),
                activeDotColor: const Color(0xff1E9BD4),
                dotHeight: 10.w,
                dotWidth: 10.w,
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                width: 162.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: const Color(0xffBFFAF3),
                  borderRadius: BorderRadius.circular(50.r),
                ),
              ),
              Container(
                width: 162.w / 5 * (widget.pageCount + 1),
                height: 8.h,
                decoration: BoxDecoration(
                  color: const Color(0xff3EF0DD),
                  borderRadius: BorderRadius.circular(50.r),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
