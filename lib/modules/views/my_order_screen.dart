import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/components/color.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_icon.dart';
import '../../widgets/custom_list_view.dart';
import '../../widgets/custom_size_box.dart';
import '../../widgets/custom_text2.dart';
import '../controllers/order_controller.dart';

class MyOrderScreen extends GetView<MyOrderController> {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyOrderController>(
      init: MyOrderController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColor.White,
          appBar: AppBar(
            backgroundColor: AppColor.White,
            leading: CustomIcon(
              iconData: Icons.arrow_back,
              color: AppColor.iconColor,
              size: 30.h,
              onPres: () {
                Get.offNamed("/layout");
              },
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                CustomText(
                  text: "My Order",
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: CustomText(
                      text: "Edit",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                    )),
              ],
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "3 items selected",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.onBackground),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: CustomListView(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Container(
                          width: double.infinity,
                          height: 90.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: AppColor.primaryColor
                              //  Theme.of(context).colorScheme.surface,
                              ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Container(
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://s7d1.scene7.com/is/image/hyundai/2023-ioniq-6-limited-rwd-transmission-blue-pearl-profile:Vehicle-Carousel?fmt=webp-alpha",
                                        height: 30.h,
                                        width: 90.w,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: "Orion Motor Wheel Spacers",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                ?.copyWith(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onBackground,
                                                ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Container(
                                            child: Container(
                                                width: 72.w,
                                                height: 28.h,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.r),
                                                    color: Colors.white
                                                    //  Theme.of(context)
                                                    //     .colorScheme
                                                    //     .primary,
                                                    ),
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5.w),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SvgPicture.asset(
                                                            "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/mins.svg?alt=media&token=9bc1132c-75b3-400f-b271-4bdf97dabb75",
                                                            height: 3.h,
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .secondary,
                                                          ),
                                                          const Spacer(),
                                                          CustomText(
                                                            text: "1",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyText1
                                                                ?.copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize:
                                                                      14.sp,
                                                                  color: Theme.of(
                                                                          context)
                                                                      .colorScheme
                                                                      .onBackground,
                                                                ),
                                                          ),
                                                          const Spacer(),
                                                          SvgPicture.asset(
                                                            "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/plus.svg?alt=media&token=3fd955ae-d73b-47d4-9b45-00bf259a4299",
                                                            height: 10.h,
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .secondary,
                                                          ),
                                                          const Spacer(),
                                                        ]))),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    top: 49.h,
                                    child: CustomText(
                                      text: "\$2000",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          ?.copyWith(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryVariant,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                      scrollDirection: Axis.vertical,
                      separatorBuilder: CustomSizeBox(
                        height: 10.w,
                      ),
                      itemCount: 10,
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: controller.bottomSheet == false ? 310.h : 350.h,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              // Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.r),
                  topLeft: Radius.circular(30.r)),
            ),
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
              child: controller.bottomSheet == false
                  ? SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "Discount",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground),
                              ),
                              const Spacer(),
                              CustomText(
                                text: "\$8:00",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: Row(
                              children: [
                                CustomText(
                                  text: "Total",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onBackground),
                                ),
                                const Spacer(),
                                CustomText(
                                  text: "\$126.00",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryVariant),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 60.h),
                            child: Row(
                              children: [
                                CustomText(
                                  text: "Order time",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onBackground),
                                ),
                                const Spacer(),
                                CustomText(
                                  text: "7:15 pm",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: Row(
                              children: [
                                CustomText(
                                  text: "Expected delivery time",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onBackground),
                                ),
                                const Spacer(),
                                CustomText(
                                  text: "18:00 pm",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 35.h),
                            child: CustomButton(
                              onPressed: () {
                                controller.changeValueOfBottomSheet(true);
                              },
                              padding: 0.w,
                              height: 50.h,
                              width: double.infinity,
                              color:
                                  Theme.of(context).colorScheme.primaryVariant,
                              borderRadius: 30.r,
                              text: "Pay now",
                              textColor: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "Discount",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground),
                              ),
                              const Spacer(),
                              CustomText(
                                text: "\$8:00",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 19.h, bottom: 38.h),
                            child: Row(
                              children: [
                                CustomText(
                                  text: "Total",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onBackground),
                                ),
                                const Spacer(),
                                CustomText(
                                  text: "\$126.00",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryVariant),
                                ),
                              ],
                            ),
                          ),
                          Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              ListTile(
                                visualDensity: VisualDensity.compact,
                                contentPadding: EdgeInsets.zero,
                                title: CustomText(
                                  text: "Address",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground,
                                      ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 13.0),
                                  child: CustomText(
                                    text: "CA 90028 United States",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(),
                                  ),
                                ),
                                titleAlignment: ListTileTitleAlignment.center,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: CustomText(
                                    text: "Edit",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryVariant,
                                        ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 28.h,
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: CustomText(
                              text: "Payment",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                  ),
                            ),
                            trailing: CustomIcon(
                              iconData: Icons.keyboard_arrow_down_rounded,
                            ),
                            subtitle: Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Row(
                                children: [
                                  // CustomSvgImage(
                                  //   image: "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/master_card.svg?alt=media&token=bd4f0531-e3d3-4279-aa93-f93c382403c9",
                                  //   height: 15.h,
                                  // ),
                                  CustomText(
                                    text: " ** ** ** 3247",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(),
                                  ),
                                ],
                              ),
                            ),
                            titleAlignment: ListTileTitleAlignment.center,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20.h),
                            child: CustomButton(
                              onPressed: () {
                                controller.changeValueOfBottomSheet(true);
                              },
                              padding: 0.w,
                              height: 50.h,
                              width: double.infinity,
                              color:
                                  Theme.of(context).colorScheme.primaryVariant,
                              borderRadius: 30.r,
                              text: "Pay now",
                              textColor: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }
}
