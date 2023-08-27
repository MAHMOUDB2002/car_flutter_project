import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String ?text;
  TextStyle?style;
  TextAlign? textAlign;
  void Function()?onTap;
  int ?maxLines;
  CustomText({this.style,this.text,this.textAlign,this.onTap,this.maxLines});
  @override
  Widget build(BuildContext context) {
    return         GestureDetector(onTap: onTap,child: Text(text!,style: style,textAlign: textAlign,maxLines: maxLines,));
  }
}