// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class OnBoardingAlignImage extends StatelessWidget {
  String textImage;
  double width;
  double height;
  BoxFit fit;
  Alignment alignment;
  OnBoardingAlignImage({
    Key? key,
    required this.textImage,
    required this.width,
    required this.height,
    this.fit = BoxFit.contain,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: SvgPicture.asset(
        textImage,
        height: height,
        width: width,
        fit: fit,
      ),
    );
  }
}
