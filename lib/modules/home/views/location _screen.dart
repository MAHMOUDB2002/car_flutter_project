import 'package:azlistview/azlistview.dart';
import 'package:car_project/modules/home/views/login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../app/shared/style/AppTheme.dart';
import '../../../common_widget/customTextFormWithRecord.dart';
import '../../../common_widget/custom_icon.dart';
import '../../../common_widget/custom_text.dart';
import '../controllers/location_controller.dart';

class LocationView extends GetView<LocationController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocationController>(
      init: LocationController(),
      builder: (controller) {
        return Scaffold(
            backgroundColor: AppTheme.colors.primaryColor,
            appBar: AppBar(
              backgroundColor: AppTheme.colors.primaryColor,
              leading: CustomIcon(
                icon: Icons.close,
                size: 30.h,
                color: AppTheme.colors.iconColor,
              ),
              title: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomTextFormWithRecord(
                    text: "Search",
                    height: 30.h,
                    borderRadius: 25.r,
                    color: AppTheme.colors.White,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(12.h),
                    ),
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.colors.secondryColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Image.asset(
                      "assets/images/search.png",
                      color: AppTheme.colors.iconColor,
                      height: 20.h,
                      width: 20.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Row(
                children: [
                  CustomText(AppTheme.colors.secondryColorText, 14.sp,
                      FontWeight.w400, "Selected"),
                  CustomText(AppTheme.colors.primaryColorText, 18.sp,
                      FontWeight.w700, " Bankok")
                ],
              ),
            ),
            bottomSheet: Container(
              // height: 1.sh / 1.4,
              height: 660,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppTheme.colors.White,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      25.r,
                    ),
                    topLeft: Radius.circular(25.r)),
              ),
              child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 30.h,
                      left: 20.w,
                      right: 20.w,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(AppTheme.colors.secondryColorText, 14.sp,
                              FontWeight.w400, 'City location'),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/position.png",
                                  height: 16.h,
                                  width: 12.w,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                CustomText(Colors.black, 14.sp, FontWeight.w600,
                                    'Bangkok'),
                                Spacer(),
                                CustomText(AppTheme.colors.secondryColor, 14.sp,
                                    FontWeight.w400, 'Detect'),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            color: Color(hexColor('#F1F2F3')),
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(start: 15.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'A',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          controller.countriesName.length != 0
                              ? Container(
                                  height: 580.h,
                                  child: AzListView(
                                    indexBarOptions: IndexBarOptions(
                                      indexHintAlignment: Alignment.centerRight,
                                    ),
                                    data: controller.item,
                                    itemCount: controller.item.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CustomText(
                                            AppTheme.colors.secondryColor,
                                            16.sp,
                                            FontWeight.w400,
                                            "${controller.item[index].title}"),
                                        // CustomText(
                                        // text:
                                        //     "${controller.item[index].title}",
                                        // fontSize: 16.sp,
                                        // fontWeight: FontWeight.w400,
                                        //),
                                      );
                                    },
                                    physics: BouncingScrollPhysics(),
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  )),
            ));
      },
    );
  }
// }
// initList(){
//
// }
}

class CountryLists extends ISuspensionBean {
  String? title;
  String? tag;
  CountryLists({this.title, this.tag});
  @override
  String getSuspensionTag() => tag!;
}
