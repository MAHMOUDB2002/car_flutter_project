import 'package:car_project/modules/views/details/news_details_review%20.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/components/color.dart';
import '../../../utils/components/components.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_icon.dart';
import '../../../widgets/custom_text2.dart';

class CompareCareList extends StatelessWidget {
  const CompareCareList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColor.White,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10.w, top: 13.h),
              child: Text(
                'Edit',
                style: TextStyle(color: AppColor.secondryColorText),
              )),
        ],
        leading: CustomIcon(
          onPres: () {
            // Get.offNamed("/layout");
          },
          iconData: Icons.arrow_back,
          size: 30.h,
          color: AppColor.secondryColorText,
        ),
        title: Center(
          child: CustomText(
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400),
            text: 'Compare Cars',
            // text: "${controller.nameOfCountry ?? "Bangkok"}",
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 110,
        decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20),
          child: Row(
            children: [
              CustomButton(
                onPressed: () {
                  // controller.changeValueOfOffers(true);
                },
                border: Border.all(color: Colors.green),
                padding: 0.w,
                height: 44.h,
                width: 160.w,
                color: AppColor.White,
                borderRadius: 30.r,
                text: "+ Add Cars",
                textColor: AppColor.secondryColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                width: 16.w,
              ),
              CustomButton(
                onPressed: () {
                  // controller.changeValueOfOffers(true);
                },
                padding: 0.w,
                height: 44.h,
                width: 160.w,
                color: AppColor.secondryColor,
                borderRadius: 30.r,
                text: "Compare",
                textColor: AppColor.White,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 546.h,
            child: ListView.builder(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: carsItems.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => buildCompareCarItem(
                    carsItems[index], imagesIndex = index, context)),
          ),
        ],
      ),
    );
  }
}
