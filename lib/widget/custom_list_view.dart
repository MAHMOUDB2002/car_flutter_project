import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListView extends StatelessWidget {
double?height;
double?width;
bool ?shrinkWrap;
Axis?scrollDirection;
Widget? Function(BuildContext context, int index) ?itemBuilder;
Widget?separatorBuilder;
int ?itemCount;
ScrollPhysics?physics;
CustomListView({this.height,this.width,this.shrinkWrap,this.scrollDirection,this.itemBuilder,this.separatorBuilder,this.itemCount,this.physics});
@override
  Widget build(BuildContext context) {
    return             SizedBox(
        height: height,

        width: width,
        child: ListView.separated(
          padding: EdgeInsets.zero,
          physics:physics ,
            shrinkWrap: shrinkWrap!,
            scrollDirection:scrollDirection!,
            itemBuilder: (context, index) =>itemBuilder!(context,index),
            separatorBuilder: (context, index) => separatorBuilder!,
            itemCount: itemCount??0));
  }
}