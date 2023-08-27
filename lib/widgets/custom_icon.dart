import 'package:flutter/material.dart';

class CustomIcon2 extends StatelessWidget {
  IconData? icon;
  double? size;
  Color? color;
  CustomIcon2({this.icon, this.size, this.color});
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}

class CustomIcon extends StatelessWidget {
  IconData? iconData;
  double? size;
  Color? color;
  void Function()? onPres;
  CustomIcon({this.iconData, this.size, this.color, this.onPres});
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed:
          onPres,
        icon: Icon(
          iconData,
          size: size,
          color: color,
        ));
  }
}
