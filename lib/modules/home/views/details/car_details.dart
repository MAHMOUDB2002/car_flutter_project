import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../shared/style/AppTheme.dart';
import '../../../../widget/custom_button.dart';
import '../../../../widget/custom_icon.dart';
import '../../../../widget/custom_list_view.dart';
import '../../../../widget/custom_text2.dart';
import '../../../../widget/custom_text_form.dart';
import '../../controllers/car_details_controller.dart';

class CarDetailsView extends GetView<CarDetailsController> {
  const CarDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CarDetailsController>(
      init: CarDetailsController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: AppTheme.colors.White,
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
                  color: AppTheme.colors.secondryColorText,
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
                        color: AppTheme.colors.secondryColorText,
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
                GestureDetector(
                  onPanUpdate: (details) {
                    controller.changeValueOfTransform(
                        details.delta.dy * 0.01, details.delta.dx * 0.01);
                  },
                  child: Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(controller.rotationY),
                    alignment: FractionalOffset.center,
                    child: GestureDetector(
                        onTap: () {
                          Get.offNamed("/CarDetails1View");
                        },
                        child: Image.network(
                          'https://d2t1xqejof9utc.cloudfront.net/screenshots/pics/51c2cf1a90c50f2ea558c24207d2e107/large.png',
                          width: 400.w,
                          height: 100.h,
                          fit: BoxFit.contain,
                        )), // Replace with your image path
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: CustomListView(
                        height: 32.h,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: SizedBox(
                          width: 20.w,
                        ),
                        itemCount: 4,
                        itemBuilder: controller.buildFirstItemList),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                controller.valueOffers == false
                    ? controller.showBottonSheetCity == false
                        ? Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25.r),
                                    topLeft: Radius.circular(25.r)),
                                color: AppTheme.colors.primaryColor
                                // color: Theme.of(context).colorScheme.surface,
                                ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 10.h, left: 20.w, bottom: 20.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            CustomText(
                                                text: "Porsche 718",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.w700,
                                                )

                                                //  Theme.of(context)
                                                //     .textTheme
                                                //     .bodyText1
                                                //     ?.copyWith(

                                                //     ),
                                                ),
                                            const Spacer(),
                                            CustomText(
                                              text: "Compare",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  ?.copyWith(
                                                    color: Colors.grey,
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                            ),
                                            Checkbox(
                                              activeColor: Theme.of(context)
                                                  .colorScheme
                                                  .primaryVariant,
                                              side: BorderSide(
                                                  color: Colors.grey,
                                                  // color: Theme.of(context)
                                                  //     .colorScheme
                                                  //     .copyWith(
                                                  //       primary:
                                                  //           Theme.of(context)
                                                  //               .colorScheme
                                                  //               .secondary,
                                                  //     )
                                                  // .primary,
                                                  style: BorderStyle.solid,
                                                  strokeAlign: -3.h),
                                              value: controller.isChecked,
                                              onChanged: (bool? value) {
                                                controller
                                                    .changeValueOfCheckBox(
                                                        value!);
                                              },
                                            ),
                                          ],
                                        ),
                                        CustomText(
                                          text: "\$62,000.00-\$74,000.00  ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              ?.copyWith(
                                                color: AppTheme
                                                    .colors.secondryColor,
                                                //  Theme.of(context)
                                                //     .colorScheme
                                                //     .primaryVariant,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 30.h,
                                              bottom: 20.h,
                                              right: 15.w),
                                          child: Row(
                                            children: [
                                              RatingBar.builder(
                                                initialRating: 3,
                                                unratedColor: Colors.grey,
                                                //  Theme.of(context)
                                                //     .colorScheme
                                                //     .secondary,
                                                updateOnDrag: true,
                                                glowColor: Theme.of(context)
                                                    .colorScheme
                                                    .primaryContainer
                                                    .withOpacity(0),
                                                // Remove glow effect
                                                glowRadius: 0.0,
                                                // Remove glow
                                                minRating: 1,
                                                itemSize: 15.h,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                itemPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 1.w),
                                                itemBuilder: (context, _) =>
                                                    Icon(
                                                  Icons.star,
                                                  color: AppTheme
                                                      .colors.secondryColor,
                                                  //  Theme.of(context)
                                                  //     .colorScheme
                                                  //     .primaryVariant,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                },
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              CustomText(
                                                text: "268 review",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1
                                                    ?.copyWith(
                                                      color: AppTheme.colors
                                                          .secondryColorText,
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                              ),
                                              const Spacer(),
                                              CustomText(
                                                text: "Rate This car",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1
                                                    ?.copyWith(
                                                      color: AppTheme
                                                          .colors.secondryColor,
                                                      //  Theme.of(context)
                                                      //     .colorScheme
                                                      //     .primaryVariant,
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: 10.w, top: 10.h),
                                          child: Row(
                                            children: [
                                              CustomText(
                                                text: "Key Specs",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1
                                                    ?.copyWith(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                              ),
                                              const Spacer(),
                                              CustomText(
                                                text: "All Specs",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1
                                                    ?.copyWith(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: AppTheme
                                                          .colors.secondryColor,
                                                      //  Theme.of(context)
                                                      //     .colorScheme
                                                      //     .primaryVariant,
                                                    ),
                                              ),
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_outlined,
                                                size: 20.h,
                                                color: AppTheme
                                                    .colors.secondryColor,
                                                //  Theme.of(context)
                                                //     .colorScheme
                                                //     .primaryVariant,
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10.h),
                                          child: CustomListView(
                                            height: 100.w,
                                            itemCount: 3,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: SizedBox(
                                              width: 20.w,
                                            ),
                                            itemBuilder:
                                                controller.bulidSecondItemList,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.loose,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20.r),
                                              topRight: Radius.circular(20.r)),
                                          color: AppTheme.colors.White
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
                                                    itemCount: 6,
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
                                                                      color: AppTheme
                                                                          .colors
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
                                                color: AppTheme
                                                    .colors.secondryColor,
                                                // color: Theme.of(context)
                                                //     .colorScheme
                                                //     .primaryVariant,
                                                borderRadius: 30.r,
                                                text: "Get Offers from Dealer",
                                                textColor:
                                                    AppTheme.colors.White,
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
                            color: Colors.white
                            //  Theme.of(context).colorScheme.surface,
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
                                            color: AppTheme.colors.primaryColor
                                            //  Theme.of(context)
                                            //     .colorScheme
                                            //     .primary,
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
                                      "Phone number",
                                  //   style:
                                  //       Theme.of(context).textTheme.bodyText1,
                                  // ),
                                  // sizeOfIcon: 20.h,
                                  suffixIcon: Icons.close,
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
                                        "Name",
                                    // style:
                                    // Theme.of(context).textTheme.bodyText1,
                                    // ),
                                    // sizeOfIcon: 20.h,
                                    suffixIcon: Icons.close,
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
                                        color: AppTheme.colors.iconColor,
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
                                          color: AppTheme.colors.iconColor,
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
















// import 'package:car_project/app/shared/style/AppTheme.dart';
// import 'package:car_project/data/car_item_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// class CarDetailsScreen extends StatefulWidget {
//   // Function function;
//   // CommunityScreen(this.function);

//   @override
//   State<CarDetailsScreen> createState() => CarDetailsScreenState();
// }

// class CarDetailsScreenState extends State<CarDetailsScreen> {
//   final TextEditingController _textController = TextEditingController();

//   String? valueChoose;
//   List items = [
//     "Giulia",
//     "GT-R",
//     "Elmiraj",
//     "RX-V",
//   ];

//   int index = 0;

//   void changeValueOfIndex(int value) {
//     setState(() {
//       index = value;
//     });
//   }

//   bool? isChecked = false;
//   bool? isChecked2 = false;

//   List<CarItemModel> carsItems = [
//     CarItemModel(
//       id: 1,
//       carName: "Lamborghini",
//       // carInfo:
//       //     'Porsche has announced the name of its Tesla Model S rival, the production-spec Mission E concept. Called the Taycan, the electric sedan is all set to get into production by next year, ahead of its international debut in 2020. The Taycan will be the first electric car by Porsche and it will continue to be a performance-oriented sportscar staying true to the Porsche tradition.',
//       carPrice: '50000000000000',
//       //     ,
//       carImage: 'assets/images/c2.png',
//       carFColor: Colors.amber,
//       carSColor: Colors.red,
//       carTColor: Colors.blue,
//     ),
//     CarItemModel(
//       id: 2,
//       carName: "Lamborghini",
//       carPrice: '99999000000',
//       //     ,
//       carImage: 'assets/images/c2.png',
//       carFColor: Colors.amber,
//       carSColor: Colors.red,
//       carTColor: Colors.blue,
//     ),
//     CarItemModel(
//       id: 3,
//       carName: "Lamborghini",
//       carPrice: '211111100000000',
//       //     ,
//       carImage: 'assets/images/c2.png',
//       carFColor: Colors.amber,
//       carSColor: Colors.red,
//       carTColor: Colors.blue,
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     var imagesIndex;
//     return Scaffold(
//       backgroundColor: AppTheme.colors.White,
//       appBar: AppBar(
//         backgroundColor: AppTheme.colors.White,
//         leading: Icon(
//           Icons.arrow_back,
//           color: Colors.grey,
//         ),
//         actions: [
//           Center(
//             child: SizedBox(
//               width: 75.w,
//               child: DropdownButton(
//                 underline: SizedBox(),
//                 // dropdownColor: Colors.green,
//                 icon: Icon(
//                   Icons.arrow_drop_down,
//                   color: Colors.grey,
//                 ),
//                 hint: Text(
//                   "Bangkok: ",
//                   style: TextStyle(fontSize: 12.0.sp, color: Colors.grey),
//                 ),
//                 value: valueChoose,
//                 onChanged: (newValue) {
//                   setState(() {
//                     valueChoose = newValue as String?;
//                   });
//                 },
//                 items: items.map((valueItem) {
//                   return DropdownMenuItem(
//                       value: valueItem,
//                       child: Text(
//                         valueItem,
//                         style: TextStyle(fontSize: 12.0, color: Colors.grey),
//                       ));
//                 }).toList(),
//               ),
//             ),
//           ),
//           Container(
//             width: 30.w,
//             height: 30.h,
//             padding: EdgeInsets.all(8),
//             decoration:
//                 BoxDecoration(color: Colors.white, shape: BoxShape.circle),
//             alignment: Alignment.center,
//             child: Icon(
//               size: 17,
//               Icons.favorite_border,
//               color: Colors.grey,
//             ),
//           ),
//           Container(
//             width: 30.w,
//             height: 30.h,
//             padding: EdgeInsets.all(8),
//             decoration:
//                 BoxDecoration(color: Colors.white, shape: BoxShape.circle),
//             alignment: Alignment.center,
//             child: Icon(
//               size: 17,
//               Icons.share,
//               color: Colors.grey,
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 5.0),
//           child: Container(
//             alignment: AlignmentDirectional.topStart,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Column(
//                   children: [
//                     Stack(
//                       children: [
//                         Image(
//                           alignment: Alignment.bottomCenter,
//                           image: AssetImage('assets/images/circle.png'),
//                           width: 300,
//                           height: 200,
//                         ),
//                         Positioned(
//                           child: Image(
//                             width: 300,
//                             height: 54,
//                             image: AssetImage('assets/images/ccc.png'),
//                           ),
//                           top: 10,
//                           right: 15,
//                           left: 15,
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20.h,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: 48.w,
//                       height: 32.h,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Stack(
//                         children: [
//                           Opacity(
//                             opacity: .9,
//                             child: Image(
//                               image:
//                                   AssetImage('assets/images/Rectangle 502.png'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Positioned(
//                             child: Center(
//                               child: Column(
//                                 children: [
//                                   Text(
//                                     '+240',
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 8.sp),
//                                   ),
//                                   Text(
//                                     'Exterior',
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 8.sp),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             top: 5,
//                             bottom: 5,
//                             left: 10,
//                             right: 10,
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 15.w,
//                     ),
//                     Opacity(
//                       opacity: .9,
//                       child: Container(
//                         width: 48.w,
//                         height: 32.h,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Stack(
//                           children: [
//                             Image(
//                               image:
//                                   AssetImage('assets/images/Rectangle 502.png'),
//                               fit: BoxFit.cover,
//                             ),
//                             Positioned(
//                               child: Center(
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       '+240',
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 8.sp),
//                                     ),
//                                     Text(
//                                       'Exterior',
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 8.sp),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               top: 5,
//                               bottom: 5,
//                               left: 10,
//                               right: 10,
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 15.w,
//                     ),
//                     Opacity(
//                       opacity: .9,
//                       child: Container(
//                         width: 48.w,
//                         height: 32.h,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Stack(
//                           children: [
//                             Image(
//                               image:
//                                   AssetImage('assets/images/Rectangle 502.png'),
//                               fit: BoxFit.cover,
//                             ),
//                             Positioned(
//                               child: Center(
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       '+240',
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 8.sp),
//                                     ),
//                                     Text(
//                                       'Exterior',
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 8.sp),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               top: 5,
//                               bottom: 5,
//                               left: 10,
//                               right: 10,
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 15.w,
//                     ),
//                     Opacity(
//                       opacity: .9,
//                       child: Container(
//                         width: 48.w,
//                         height: 32.h,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Stack(
//                           children: [
//                             Image(
//                               image:
//                                   AssetImage('assets/images/Rectangle 502.png'),
//                               fit: BoxFit.cover,
//                             ),
//                             Positioned(
//                               child: Center(
//                                 child: Column(
//                                   children: [
//                                     Text(
//                                       '+240',
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 8.sp),
//                                     ),
//                                     Text(
//                                       'Exterior',
//                                       style: TextStyle(
//                                           color: Colors.white, fontSize: 8.sp),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               top: 5,
//                               bottom: 5,
//                               left: 10,
//                               right: 10,
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       color: AppTheme.colors.primaryColor,
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(20),
//                           topRight: Radius.circular(20))),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(20.0),
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Text(
//                                     'Porsche 718',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20.sp,
//                                         color:
//                                             AppTheme.colors.primaryColorText),
//                                   ),
//                                   Spacer(),
//                                   Text('Compare',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 14.sp,
//                                         color:
//                                             AppTheme.colors.secondryColorText,
//                                       )),
//                                   Checkbox(
//                                       value: isChecked,
//                                       onChanged: (newBool) {
//                                         setState(() {
//                                           isChecked = newBool;
//                                         });
//                                       })
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               Text(
//                                 '\$62,000.00-\$74,000.00  ',
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20.sp,
//                                     color: AppTheme.colors.primaryColorText),
//                               ),
//                               Row(
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       RatingBar.builder(
//                                         itemBuilder: (context, _) => Icon(
//                                           Icons.star,
//                                           color: Colors.amber,
//                                         ),
//                                         onRatingUpdate: (rating) {
//                                           print(rating);
//                                         },
//                                         itemSize: 20,
//                                         itemCount: 5,
//                                         itemPadding: EdgeInsets.symmetric(
//                                             horizontal: 3.0),
//                                         allowHalfRating: true,
//                                         direction: Axis.horizontal,
//                                         minRating: 1,
//                                         initialRating: 0,
//                                       ),
//                                       SizedBox(
//                                         width: 10.w,
//                                       ),
//                                       Text(
//                                         '268 review',
//                                         style: TextStyle(
//                                             fontSize: 12,
//                                             color: AppTheme
//                                                 .colors.secondryColorText),
//                                       ),
//                                       // Spacer(),
//                                       Text(
//                                         'Rate This car',
//                                         style: TextStyle(
//                                             fontSize: 12,
//                                             color: AppTheme
//                                                 .colors.secondryColorText),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   Text(
//                                     'Key Specs',
//                                     style: TextStyle(
//                                         fontSize: 14.0.sp,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Spacer(),
//                                   // SizedBox(width: 218.w),
//                                   TextButton(
//                                     child: Row(children: [
//                                       Text(
//                                         'All Specs',
//                                         style: TextStyle(
//                                             color: Colors.green,
//                                             fontSize: 12.sp),
//                                       ),
//                                       Icon(
//                                         Icons.arrow_forward_ios_outlined,
//                                         color: Colors.green,
//                                         size: 15,
//                                       ),
//                                     ]),
//                                     onPressed: () {},
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   Container(
//                                     width: 100.w,
//                                     height: 100.h,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(10),
//                                         color: AppTheme.colors.White),
//                                     child: Padding(
//                                       padding: const EdgeInsetsDirectional.only(
//                                           start: 10.0, top: 10.0),
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           SvgPicture.asset(
//                                             'assets/images/power.svg',
//                                             width: 36.w,
//                                             height: 24.h,
//                                           ),
//                                           SizedBox(
//                                             height: 18.h,
//                                           ),
//                                           Text(
//                                             '3995 CC',
//                                             style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontSize: 12),
//                                           ),
//                                           SizedBox(
//                                             height: 4.h,
//                                           ),
//                                           Text(
//                                             'Engine Power',
//                                             style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontSize: 10),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 18,
//                                   ),
//                                   Container(
//                                     width: 100.w,
//                                     height: 100.h,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(10),
//                                         color: AppTheme.colors.White),
//                                     child: Padding(
//                                       padding: const EdgeInsetsDirectional.only(
//                                           start: 10.0, top: 10.0),
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           SvgPicture.asset(
//                                             'assets/images/settings.svg',
//                                             width: 36.w,
//                                             height: 24.h,
//                                           ),
//                                           SizedBox(
//                                             height: 18.h,
//                                           ),
//                                           Text(
//                                             '360 N·m',
//                                             style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontSize: 12),
//                                           ),
//                                           SizedBox(
//                                             height: 4.h,
//                                           ),
//                                           Text(
//                                             'Max Torque',
//                                             style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontSize: 10),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 18,
//                                   ),
//                                   Container(
//                                     width: 100.w,
//                                     height: 100.h,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(10),
//                                         color: AppTheme.colors.White),
//                                     child: Padding(
//                                       padding: const EdgeInsetsDirectional.only(
//                                           start: 10.0, top: 10.0),
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           SvgPicture.asset(
//                                             'assets/images/speed.svg',
//                                             width: 36.w,
//                                             height: 24.h,
//                                           ),
//                                           SizedBox(
//                                             height: 18.h,
//                                           ),
//                                           Text(
//                                             '0-100km/h-4s',
//                                             style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontSize: 12),
//                                           ),
//                                           SizedBox(
//                                             height: 4.h,
//                                           ),
//                                           Text(
//                                             'Acceleration',
//                                             style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontSize: 10),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           height: 200,
//                           decoration: BoxDecoration(
//                               color: AppTheme.colors.White,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(20),
//                                 topRight: Radius.circular(20),
//                               )),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: DefaultTabController(
//                                 length: 3,
//                                 child: Column(
//                                   children: [
//                                     TabBar(
//                                         unselectedLabelColor:
//                                             AppTheme.colors.grey6,
//                                         labelColor:
//                                             AppTheme.colors.secondryColor,
//                                         indicatorWeight: 2,
//                                         indicatorSize:
//                                             TabBarIndicatorSize.label,
//                                         indicatorColor:
//                                             AppTheme.colors.secondryColor,
//                                         dividerColor:
//                                             AppTheme.colors.secondryColor,
//                                         tabs: [
//                                           Text('Price'),
//                                           Text('Reviews'),
//                                           Text('FAQ'),
//                                         ]),
//                                     TabBarView(children: [])
//                                   ],
//                                 )),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
