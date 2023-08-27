import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../utils/components/color.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_icon.dart';
import '../../../widgets/custom_list_view.dart';
import '../../../widgets/custom_text2.dart';
import '../../../widgets/custom_text_form.dart';
import '../../controllers/car_details_controller.dart';

class CarDetailsPrice extends GetView<CarDetailsController> {
  const CarDetailsPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CarDetailsController>(
      init: CarDetailsController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: AppColor.primaryColor,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: SvgPicture.asset(
                  "assets/images/like.svg",
                  height: 15.h,
                  // color: Theme.of(context).colorScheme.onBackground,
                  // color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: SvgPicture.asset(
                  "assets/images/group.svg",
                  height: 15.h,
                  // color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ],
            title: Row(
              children: [
                CustomIcon(
                  onPres: () {
                    Get.offNamed("/layout");
                  },
                  iconData: Icons.arrow_back,
                  size: 30.h,
                  color: AppColor.secondryColorText,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    controller.changValueBottonSheetCity(true);
                  },
                  child: Row(
                    children: [
                      CustomText(
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w400),
                        text: "${controller.nameOfCountry ?? "Bangkok"}",
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CustomIcon(
                        iconData: Icons.keyboard_arrow_down_sharp,
                        color: AppColor.secondryColorText,
                        // Theme.of(context).colorScheme.secondary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                controller.valueOffers == false
                    ? controller.showBottonSheetCity == false
                        ? Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25.r),
                                    topLeft: Radius.circular(25.r)),
                                color: AppColor.White
                                // color: Theme.of(context).colorScheme.surface,
                                ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    fit: FlexFit.loose,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20.r),
                                              topRight: Radius.circular(20.r)),
                                          color: AppColor.White
                                          //  Theme.of(context)
                                          //     .colorScheme
                                          //     .primary,
                                          ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 20.h, left: 20.w, right: 20.w),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomListView(
                                              height: 50.h,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.horizontal,
                                              separatorBuilder: SizedBox(
                                                width: 20.w,
                                              ),
                                              itemCount:
                                                  controller.choices.length,
                                              itemBuilder: controller
                                                  .bulidThreedItemList,
                                            ),
                                            if (controller.index == 0)
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomListView(
                                                    shrinkWrap: true,
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    separatorBuilder: Container(
                                                      width: double.infinity,
                                                      height: 1.h,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                                    ),
                                                    itemCount: controller
                                                        .allCarModel
                                                        ?.data
                                                        ?.length,
                                                    itemBuilder: controller
                                                        .bulidFourItemList,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 20.h,
                                                        bottom: 20.h),
                                                    child: CustomText(
                                                      text: "Recommend for you",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1
                                                          ?.copyWith(
                                                            fontSize: 14.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                    ),
                                                  ),
                                                  Wrap(
                                                    runAlignment: WrapAlignment
                                                        .spaceBetween,
                                                    spacing: 50.w,
                                                    children: List.generate(
                                                      6,
                                                      (index) => Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 10.h),
                                                        child: Column(
                                                          children: [
                                                            Image.network(
                                                              "https://s7d1.scene7.com/is/image/hyundai/2023-ioniq-6-limited-rwd-transmission-blue-pearl-profile:Vehicle-Carousel?fmt=webp-alpha",
                                                              height: 50.h,
                                                              width: 80.w,
                                                            ),
                                                            CustomText(
                                                              text:
                                                                  "Mercedes SLC",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyText1
                                                                  ?.copyWith(
                                                                    color: Theme.of(
                                                                            context)
                                                                        .colorScheme
                                                                        .onBackground,
                                                                    fontSize:
                                                                        10.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            if (controller.index == 2)
                                              Column(
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 60.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.r),
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .surface,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 20.w),
                                                      child: Row(
                                                        children: [
                                                          Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              SvgPicture.asset(
                                                                "assets/images/qustion.svg",
                                                                height: 35.h,
                                                                width: 35.w,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                              CustomText(
                                                                text: "Q & A",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyText1
                                                                    ?.copyWith(
                                                                      color: AppColor
                                                                          .primaryColor,
                                                                      fontSize:
                                                                          12.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: 20.w,
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              CustomText(
                                                                text:
                                                                    "Have any question?",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyText1
                                                                    ?.copyWith(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .colorScheme
                                                                          .onBackground,
                                                                      fontSize:
                                                                          14.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                              ),
                                                              CustomText(
                                                                text:
                                                                    "Click the button ",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyText1
                                                                    ?.copyWith(
                                                                      fontSize:
                                                                          12.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          const Spacer(),
                                                          CustomButton(
                                                            padding: 0.w,
                                                            height: 30.h,
                                                            width: 70.w,
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .primaryVariant,
                                                            borderRadius: 5.r,
                                                            text: "Ask Now",
                                                            textColor: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .primaryContainer,
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 20.h),
                                                    child: CustomListView(
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      physics:
                                                          const BouncingScrollPhysics(),
                                                      separatorBuilder:
                                                          SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      itemCount: 5,
                                                      itemBuilder: controller
                                                          .bulidFiveItemList,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  bottom: 30.h, top: 20.h),
                                              child: CustomButton(
                                                onPressed: () {
                                                  controller
                                                      .changeValueOfOffers(
                                                          true);
                                                },
                                                padding: 0.w,
                                                height: 50.h,
                                                width: double.infinity,
                                                color: AppColor.secondryColor,
                                                // color: Theme.of(context)
                                                //     .colorScheme
                                                //     .primaryVariant,
                                                borderRadius: 30.r,
                                                text: "Get Offers from Dealer",
                                                textColor:
                                                    AppColor.White,
                                                // textColor: Theme.of(context)
                                                //     .colorScheme
                                                //     .primaryContainer,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.r),
                                    topLeft: Radius.circular(10.r)),
                                color: Theme.of(context).colorScheme.surface),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 20.h),
                              child: CustomListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                physics: BouncingScrollPhysics(),
                                separatorBuilder: SizedBox(
                                  height: 10.h,
                                ),
                                itemBuilder: controller.buildCountrySheet,
                                itemCount: controller.countriesName.length,
                              ),
                            ),
                          )
                    : Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25.r),
                              topLeft: Radius.circular(25.r)),
                          color: Theme.of(context).colorScheme.surface,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 10.h, left: 20.w, right: 20.w),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    const Spacer(),
                                    Center(
                                      child: CustomText(
                                        text: "Get Offers from Dealer",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                      ),
                                    ),
                                    const Spacer(),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: CustomIcon(
                                        onPres: () {
                                          controller.changeValueOfOffers(false);
                                        },
                                        iconData: Icons.close,
                                        size: 25.h,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20.h),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 100.w,
                                        height: 100.w,
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  "https://s7d1.scene7.com/is/image/hyundai/2023-ioniq-6-limited-rwd-transmission-blue-pearl-profile:Vehicle-Carousel?fmt=webp-alpha")),
                                          borderRadius:
                                              BorderRadius.circular(20.r),
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: "Porsche 718",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                ?.copyWith(
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onBackground,
                                                ),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          CustomText(
                                            text:
                                                "Porsche/Luxury/The 2.3L EcoBoost",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                ?.copyWith(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                          ),
                                          SizedBox(
                                            height: 6.h,
                                          ),
                                          CustomText(
                                            text: "\$62,000.00-\$74,000.00",
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
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                CustomTextForm(
                                  // BorderSideColor:
                                  //     Theme.of(context).colorScheme.secondary,
                                  // borderRadius: 30.r,
                                  // height: 20.h,
                                  labelText:
                                      // Text(
                                      "Full Name",
                                  //   style:
                                  //       Theme.of(context).textTheme.bodyText1,
                                  // ),
                                  // sizeOfIcon: 20.h,
                                  preIcon: Icons.close,
                                  // padding: 10.h,
                                  isPassword: false,
                                  // circleAvatarColor:
                                  //     Theme.of(context).colorScheme.primary,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 20.h, bottom: 20.h),
                                  child: CustomTextForm(
                                    // BorderSideColor:
                                    //     Theme.of(context).colorScheme.secondary,
                                    // borderRadius: 30.r,
                                    // height: 20.h,
                                    labelText:
                                        // Text(
                                        "E-mail",
                                    // style:
                                    // Theme.of(context).textTheme.bodyText1,
                                    // ),
                                    // sizeOfIcon: 20.h,
                                    preIcon: Icons.close,
                                    // padding: 10.h,
                                    // circleAvatarColor:
                                    //     Theme.of(context).colorScheme.primary,
                                    isPassword: false,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: DropdownButtonFormField<String>(
                                    isExpanded: true,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                      ),
                                      labelText: 'City',
                                      labelStyle:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    icon: Padding(
                                      padding: EdgeInsets.only(right: 12),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        size: 20,
                                        color: AppColor.iconColor,
                                      ),
                                    ),
                                    onChanged: (String? newValue) {
                                      controller
                                          .changeValueOfDropDownValue(newValue);
                                    },
                                    dropdownColor:
                                        Theme.of(context).colorScheme.primary,
                                    items: controller.countriesName
                                        .map(
                                          (e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(e),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 20.h, bottom: 20.h),
                                  child: Container(
                                    width: double.infinity,
                                    child: DropdownButtonFormField<String>(
                                      isExpanded: true,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary),
                                        ),
                                        labelText: 'City',
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                      icon: Padding(
                                        padding: EdgeInsets.only(right: 12),
                                        child: Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          size: 20,
                                          color: AppColor.iconColor,
                                        ),
                                      ),
                                      onChanged: (String? newValue) {
                                        controller.changeValueOfDropDownValue(
                                            newValue);
                                      },
                                      dropdownColor:
                                          Theme.of(context).colorScheme.primary,
                                      items: controller.countriesName
                                          .map(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text(e),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 50.h),
                                  child: CustomButton(
                                    onPressed: () {},
                                    padding: 0.w,
                                    height: 50.h,
                                    width: double.infinity,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryVariant,
                                    borderRadius: 30.r,
                                    text: "Submit",
                                    textColor: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer,
                                        )
                                        .color,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
              ],
            ),
          ),
        );
      },
    );
  }
}
