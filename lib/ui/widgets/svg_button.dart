import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SvgButton extends StatelessWidget {
  const SvgButton(
      {Key? key,
      required this.svgPath,
      required this.onTap,
      this.padding = 0.0})
      : super(key: key);
  final void Function() onTap;
  final String svgPath;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 20.w, maxWidth: 20.w),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: SvgPicture.asset(svgPath),
        ),
      ),
    );
  }
}
