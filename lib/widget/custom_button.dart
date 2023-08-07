import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  void Function()? onPressed;
  Color? color;
  double? height;
  double? width;
  double? raduis;
  Color? textColor;
  String? text;
  double? fontSize;
  CustomButton2(
      {this.onPressed,
      this.color,
      this.height,
      this.width,
      this.raduis,
      this.textColor,
      this.text,
      this.fontSize});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          // .circular(raduis!)
          color: color,
        ),
        child: MaterialButton(
          onPressed: onPressed,
          height: height,
          child: Text(
            text!,
            style: TextStyle(fontSize: fontSize, color: textColor),
          ),
        ));
  }
}

class CustomButton extends StatelessWidget {
  void Function()? onPressed;
  Color? color;
  double? height;
  double? width;
  double? raduis;
  Color? textColor;
  String? text;
  double? fontSize;
  FontWeight? fontWeight;
  double? padding;
  double? borderRadius;
  Border? border;

  CustomButton(
      {this.onPressed,
      this.color,
      this.height,
      this.width,
      this.raduis,
      this.textColor,
      this.text,
      this.fontSize,
      this.fontWeight,
      this.padding,
      this.borderRadius,
      this.border});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding!),
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius!),
            // .circular(raduis!)
            color: color,
            border: border),
        child: MaterialButton(
          onPressed: onPressed,
          height: height,
          child: Text(
            text!,
            style: TextStyle(
                fontSize: fontSize, color: textColor, fontWeight: fontWeight),
          ),
        ));
  }
}
