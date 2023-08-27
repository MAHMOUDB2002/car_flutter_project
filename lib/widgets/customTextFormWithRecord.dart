import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormWithRecord extends StatelessWidget {
  double? height;
  Color? color;
  double? borderRadius;
  String? text;
  Widget? prefixIcon;
  Widget? suffixIcon;
  TextStyle? style;
  double? width;
  double? padding;
  CustomTextFormWithRecord(
      {this.height,
      this.color,
      this.borderRadius,
      this.text,
      this.prefixIcon,
      this.suffixIcon,
      this.style,
      this.width,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(borderRadius!)),
      child: Padding(
        padding: EdgeInsets.only(left: 30.w),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              hintText: text,
              // isCollapsed: true,
              suffixIcon: suffixIcon ?? null,
              prefixIcon: prefixIcon ?? null,
              hintStyle: style,
              border: InputBorder.none),
        ),
      ),
    );
  }
}
