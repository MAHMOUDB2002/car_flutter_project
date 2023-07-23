import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  IconData? icon;
  double? size;
  Color? color;
  CustomIcon({this.icon, this.size,this.color});
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}
