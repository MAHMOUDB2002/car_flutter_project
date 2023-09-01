import 'package:cached_network_image/cached_network_image.dart';
// import 'package:car_project/model/car_item_model.dart';
// import 'package:car_project/modules/home/controllers/home_controller.dart';
// import 'package:car_project/modules/home/views/Authentication/login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../app/routes/app_pages.dart';
import '../../../utils/components/color.dart';
import '../../../widgets/customTextFormWithRecord.dart';
import '../../../widgets/custom_icon.dart';
import '../../../widgets/custom_list_view.dart';
import '../../../widgets/custom_size_box.dart';
import '../../../widgets/custom_svg_image.dart';
import '../../../widgets/custom_text2.dart';
import '../../controllers/home_controller.dart';
import '../Authentication/login_Screen.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            appBar: AppBar(
              title: Row(
                children: [
                  SizedBox(
                    width: 80.w,
                    child: DropdownButton(
                      underline: SizedBox(),
                      // dropdownColor: Colors.green,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                      ),
                      hint: Text(
                        "Bangkok: ",
                        style: TextStyle(fontSize: 12.0.sp, color: Colors.grey),
                      ),
                      value: controller.valueChoose,
                      onChanged: (newValue) {
                        // setState(() {
                        controller.dropDownButton(newValue);
                        // controller.valueChoose = ;
                        // });
                      },
                      items: controller.items.map((valueItem) {
                        return DropdownMenuItem(
                            value: valueItem,
                            child: Text(
                              valueItem,
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey),
                            ));
                      }).toList(),
                    ),

                    // child: CustomText(
                    //     style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    //         overflow: TextOverflow.ellipsis,
                    //         fontSize: 12.sp,
                    //         fontWeight: FontWeight.w400),
                    //     text: controller.nameOfCountry ?? "Bangkok",
                    //     onTap: () {}),
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     controller.changValueBottonSheetCity(true);
                  //     print("moo");
                  //   },
                  //   child: Padding(
                  //     padding: EdgeInsets.only(right: 10.w),
                  //     child: CustomIcon(
                  //       iconData: Icons.keyboard_arrow_down_sharp,
                  //     ),
                  //   ),
                  // ),
                  Expanded(
                    flex: 5,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        CustomTextFormWithRecord(
                          padding: 35.w,
                          text: "Search",
                          height: 30.h,
                          borderRadius: 25.r,
                          color: Theme.of(context).colorScheme.primary,
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: CustomSvgImage(
                            image:
                                "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/icon-search.svg?alt=media&token=a5b14ea5-6ae3-4bed-86b4-ad2b82f63acf",
                            color: Theme.of(context).colorScheme.secondary,
                            height: 15.h,
                            width: 15.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.w, left: 10.w),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          radius: 18.h,
                          child: CustomSvgImage(
                            image:
                                "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/chat.svg?alt=media&token=ea4fa36e-1558-475a-b8e7-56a90b04c6a4",
                            height: 19.h,
                          ),
                        ),
                        Positioned(
                            bottom: 20.h,
                            left: 18.h,
                            child: CircleAvatar(
                              radius: 6.h,
                              backgroundColor: const Color(0xFFFF3131),
                              child: Center(
                                child: CustomText(
                                  text: "8",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primaryContainer,
                                      ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),

                  // IconButton(
                  // onPressed: () {
                  //   controller.changeAppMode();
                  // },
                  // icon: Icon(Icons.brightness_4_outlined)),
                ],
              ),
              backgroundColor: Theme.of(context).colorScheme.surface,
            ),
            body: Padding(
              padding: EdgeInsets.only(
                  top: 20.h, left: 20.w, right: 20.w, bottom: 5.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 168.h,
                      width: double.infinity,
                      clipBehavior: Clip.hardEdge,
                      // margin:
                      //     EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(17.r),
                          boxShadow: [
                            BoxShadow(color: Colors.grey[400]!, blurRadius: 6),
                          ]),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 168.h,
                            child: Stack(
                              children: [
                                ScrollConfiguration(
                                  behavior: ScrollBehavior(),
                                  child: PageView.builder(
                                    scrollDirection: Axis.horizontal,
                                    pageSnapping: true,
                                    controller: controller.pController,
                                    itemCount: controller
                                        .homeModel?.data?.sliders?.length,

                                    // controller.images.length,
                                    itemBuilder: (_, index) {
                                      return Stack(
                                        children: [
                                          SizedBox(
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: ClipRRect(
                                              child: CachedNetworkImage(
                                                  imageUrl:
                                                      '${controller.homeModel?.data?.sliders?[index].image}',
                                                  fit: BoxFit.cover,
                                                  placeholder: (context, url) =>
                                                      SpinKitFadingCircle(
                                                        color: Colors.green,
                                                        size: 50.0,
                                                      ),
                                                  errorWidget:
                                                      (context, url, error) =>
                                                          Container()),
                                            ),
                                          ),
                                          PositionedDirectional(
                                              bottom: 41.h,
                                              start: 21.w,
                                              child: Text(
                                                "${controller.homeModel?.data?.sliders?[index].title ?? ''}",
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.grey),
                                              )),
                                          PositionedDirectional(
                                              bottom: 20.h,
                                              start: 20.w,
                                              child: Text(
                                                '${controller.homeModel?.data?.sliders?[index].title ?? ''}',
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ))
                                        ],
                                      );
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 8.h),
                                    child: SmoothPageIndicator(
                                      controller: controller.pController,
                                      count: controller.homeModel?.data?.sliders
                                              ?.length ??
                                          2,
                                      // controller.images.length,
                                      effect: ExpandingDotsEffect(
                                          dotHeight: 8.w,
                                          dotWidth: 8.w,
                                          dotColor: Color(hexColor('#2A3034')),
                                          spacing: 5.w,
                                          activeDotColor:
                                              Color(hexColor('#1DB854'))),
                                      onDotClicked: (index) {
                                        controller.pController.animateToPage(
                                            index,
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.ease);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 15.h,
                    // ),

                    // Stack(
                    //   alignment: Alignment.bottomCenter,
                    //   children: [
                    // CarouselSlider(
                    //   pageController: controller.pageController,
                    //   onPageChanged: (int value) {
                    //     controller.chanValueOfIndexSlider(value);
                    //   },
                    //   carouserSliderModel: controller.carouserSliderModel,
                    // ),
                    // Padding(
                    //   padding: EdgeInsets.all(8.0.h),
                    //   child: SmoothPageIndicator(
                    //     count:
                    //         controller.homeModel?.data?.sliders?.length ??
                    //             0,
                    //     currentPage: controller.indexSlider,
                    //   ),
                    // ),
                    //   ],
                    // ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                      child: CustomListView(
                        height: 30.h,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: controller.homeModel?.data?.brands?.length,
                        separatorBuilder: CustomSizeBox(
                          width: 20.w,
                        ),
                        itemBuilder: (context, index) => Container(
                          height: 30.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Row(
                              children: [
                                // Image.network(
                                //   "${controller.homeModel?.data?.brands?[index].logo}",
                                //   height: 20.h,
                                //   width: 20.w,
                                // ),

                                CachedNetworkImage(
                                  imageUrl:
                                      '${controller.homeModel?.data?.brands?[index].logo}',
                                  placeholder: (context, url) => SizedBox(
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        color: AppColor.secondryColor,
                                      ),
                                    ),
                                  ),
                                  height: 20.h,
                                  width: 20.w,
                                  // fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Center(
                                  child: CustomText(
                                    text:
                                        "${controller.homeModel?.data?.brands?[index].name}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onBackground,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "Top deal",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                        ),
                        const Spacer(),
                        CustomText(
                          text: "more",
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryVariant,
                                  ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 20.h,
                          color: Theme.of(context).colorScheme.primaryVariant,
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                      child: CustomListView(
                        itemCount: controller.homeModel?.data?.cars?.length,
                        // 10,
                        height: 225.h,
                        itemBuilder: (context, index) => Stack(
                          alignment: Alignment.topRight,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.CAR_DETAILS_VIEW,
                                    arguments: controller
                                        .homeModel?.data?.cars?[index].id);
                                Get.toNamed("/CarDetailsView");
                              },
                              child: Container(
                                width: 160.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 30.h, left: 10.w, right: 10.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              '${controller.homeModel?.data?.cars?[index].image}',
                                          placeholder: (context, url) =>
                                              SizedBox(
                                            child: Center(
                                              child: CircularProgressIndicator(
                                                color: AppColor.secondryColor,
                                              ),
                                            ),
                                          ),
                                          fit: BoxFit.cover,
                                          // width: double.infinity,
                                        ),
                                      ),
                                      // Image.network(
                                      //   "${controller.homeModel?.data?.cars?[index].image}",
                                      //   height: 90.h,
                                      //   width: double.infinity,
                                      //   fit: BoxFit.contain,
                                      // ),
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          text:
                                              "${controller.homeModel?.data?.cars?[index].name}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              ?.copyWith(
                                                fontSize: 14.sp,
                                                overflow: TextOverflow.ellipsis,
                                                fontWeight: FontWeight.w700,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onBackground,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: CustomText(
                                                text:
                                                    "\$${controller.homeModel?.data?.cars?[index].price}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1
                                                    ?.copyWith(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColor
                                                            .secondryColor))),
                                      ),
                                      const Spacer(),
                                      Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 20.h),
                                          child: Row(children: [
                                            CustomListView(
                                              height: 10.h,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.horizontal,
                                              separatorBuilder: SizedBox(),
                                              itemBuilder: (context, index) =>
                                                  Container(
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    GestureDetector(
                                                        onTap: () {
                                                          controller
                                                              .changeValueOfIndex(
                                                                  index);
                                                        },
                                                        child: CircleAvatar(
                                                          radius: 10.h,
                                                          backgroundColor:
                                                              Color(controller
                                                                      .myColors[
                                                                  index]),
                                                        )),
                                                    controller.index == index
                                                        ? CircleAvatar(
                                                            radius: 15.h,
                                                            backgroundColor:
                                                                Color(controller
                                                                            .myColors[
                                                                        index])
                                                                    .withOpacity(
                                                                        0.55),
                                                          )
                                                        : Container(),
                                                  ],
                                                ),
                                              ),
                                              itemCount:
                                                  controller.myColors.length,
                                            ),
                                            const Spacer(),
                                            CustomSvgImage(
                                              image:
                                                  "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/arrow.svg?alt=media&token=b33d3e1e-14c5-4df2-bc81-a1c5dd144073",
                                              height: 15.h,
                                              width: 15.w,
                                              fit: BoxFit.contain,
                                            ),
                                          ])
                                          // Row(
                                          //   children: [
                                          //     Container(
                                          //         height: 10.h,
                                          //         child: ListView.separated(
                                          //             scrollDirection:
                                          //                 Axis.horizontal,
                                          //             shrinkWrap: true,
                                          //             physics:
                                          //                 const NeverScrollableScrollPhysics(),
                                          //             itemBuilder:
                                          //                 (context, index) =>
                                          //                     CircleAvatar(
                                          //                       radius: 6.h,
                                          //                     ),
                                          //             separatorBuilder:
                                          //                 (context, index) =>
                                          //                     SizedBox(
                                          //                       width: 5.w,
                                          //                     ),
                                          //             itemCount: 3)),
                                          //     const Spacer(),
                                          //     CustomSvgImage(
                                          //       image:
                                          //           "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/arrow.svg?alt=media&token=b33d3e1e-14c5-4df2-bc81-a1c5dd144073",
                                          //       height: 15.h,
                                          //       width: 15.w,
                                          //       fit: BoxFit.contain,
                                          //     ),
                                          //   ],
                                          // ),
                                          ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h, right: 10.w),
                              child: CustomIcon(
                                iconData: Icons.favorite_border_sharp,
                                size: 25.h,
                              ),
                            ),
                          ],
                        ),
                        separatorBuilder: CustomSizeBox(
                          width: 10.w,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                      ),
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "Popular brands",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                        ),
                        const Spacer(),
                        CustomText(
                          text: "more",
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryVariant,
                                  ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 20.h,
                          color: Theme.of(context).colorScheme.primaryVariant,
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                      child: CustomListView(
                        height: 102.h,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: CustomSizeBox(
                          width: 10.w,
                        ),
                        itemCount: controller.homeModel?.data?.brands?.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            controller.getALLBrands().then((value) {
                              // Get.offNamed("/Brand");
                              Get.toNamed(Routes.Brand);
                            });
                          },
                          child: Container(
                            width: 102.w,
                            height: 102.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CachedNetworkImage(
                                  imageUrl:
                                      '${controller.homeModel?.data?.brands?[index].logo}',
                                  placeholder: (context, url) => SizedBox(
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        color: AppColor.secondryColor,
                                      ),
                                    ),
                                  ),
                                  fit: BoxFit.contain,
                                  height: 45.h,
                                  width: 60.w,
                                ),
                                // Image.network(
                                //   "${controller.homeModel?.data?.brands?[index].logo}",
                                //   height: 45.h,
                                //   width: 60.h,
                                //   fit: BoxFit.contain,
                                // ),
                                CustomText(
                                  textAlign: TextAlign.center,
                                  text:
                                      "${controller.homeModel?.data?.brands?[index].name}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground,
                                      ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "Upcoming",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                        ),
                        const Spacer(),
                        CustomText(
                          text: "more",
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryVariant,
                                  ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 20.h,
                          color: Theme.of(context).colorScheme.primaryVariant,
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                      child: CustomListView(
                        height: 200.h,
                        itemCount: controller.homeModel?.data?.cars?.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: CustomSizeBox(
                          width: 10.w,
                        ),
                        itemBuilder: (context, index) => Stack(
                          alignment: Alignment.topRight,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Get.put(CarDetailsController());

                                Get.toNamed(Routes.CAR_DETAILS_VIEW,
                                    arguments: controller
                                        .homeModel?.data?.cars?[index].id);
                                Get.toNamed("/CarDetailsView");

                                // controller
                                //     .getDataOfCar(controller
                                //         .homeModel?.data?.cars?[index].id)
                                //     .then((value) {
                                //   print(controller.carDetailsl!.data!.name);
                                //   Get.offNamed("/CarDetailsView");
                                //   // Get.offNamed("/CarDetailsView");
                                // });
                              },
                              child: Container(
                                width: 160.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 30.h,
                                      left: 10.w,
                                      right: 10.w,
                                      bottom: 10.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              '${controller.homeModel?.data?.cars?[index].image}',
                                          placeholder: (context, url) =>
                                              SizedBox(
                                            child: Center(
                                              child: CircularProgressIndicator(
                                                color: AppColor.secondryColor,
                                              ),
                                            ),
                                          ),
                                          height: 95.h,
                                          width: double.infinity,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      // Image.network(
                                      //   "${controller.homeModel?.data?.cars?[index].image}",
                                      //   height: 95.h,
                                      //   width: double.infinity,
                                      //   fit: BoxFit.contain,
                                      // ),
                                      Expanded(
                                        flex: 1,
                                        child: CustomText(
                                          maxLines: 1,
                                          text:
                                              "${controller.homeModel?.data?.cars?[index].name}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              ?.copyWith(
                                                fontSize: 14.sp,
                                                overflow: TextOverflow.ellipsis,
                                                fontWeight: FontWeight.w700,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onBackground,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: CustomText(
                                                text:
                                                    "${controller.homeModel?.data?.cars?[index].price}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1
                                                    ?.copyWith(
                                                      fontSize: 12.sp,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .primaryVariant,
                                                    ))),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: CustomText(
                                                text: "Expected Launch-Sep 18",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1
                                                    ?.copyWith(
                                                        fontSize: 10.sp,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColor
                                                            .primaryColorText))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.h, right: 10.w),
                              child: CustomIcon(
                                  iconData: Icons.favorite_border_sharp,
                                  size: 25.h),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "News",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                        ),
                        const Spacer(),
                        CustomText(
                          text: "more",
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryVariant,
                                  ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 20.h,
                          color: Theme.of(context).colorScheme.primaryVariant,
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: CustomListView(
                          itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  Get.toNamed("/NewsDetails");
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 100.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.w),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                              text:
                                                  "${controller.homeModel?.data?.cars?[index].name}",
                                              //"Porsche Type 997 911 GT2 RSR Flat ",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  ?.copyWith(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onBackground),
                                            ),
                                            const Spacer(),
                                            CustomText(
                                              text:
                                                  "${controller.homeModel?.data?.cars?[index].enginePower}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  ?.copyWith(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        Container(
                                          width: 66.w,
                                          height: 66.w,
                                          decoration: BoxDecoration(
                                            color: AppColor.primaryColor,
                                            // image: const DecorationImage(
                                            //     image: NetworkImage(
                                            //       "https://www.autocar.co.uk/sites/autocar.co.uk/files/images/car-reviews/first-drives/legacy/99-best-luxury-cars-2023-bmw-i7-lead.jpg",
                                            //     ),
                                            //     fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                '${controller.homeModel?.data?.cars?[index].image}',
                                            fit: BoxFit.cover,
                                            placeholder: (context, url) =>
                                                CircularProgressIndicator(
                                              color: Colors.green,
                                            ),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Icon(Icons.error),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          separatorBuilder: CustomSizeBox(
                            height: 10.h,
                          ),
                          itemCount: 3
                          // controller.allCarModel?.data?.length,
                          ),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }
}


































// class HomeScreen extends StatefulWidget {
//   // Function function;
//   // HomeScreen(this.function);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// final pController = PageController(
//   viewportFraction: 1,
//   keepPage: true,
// );

// class _HomeScreenState extends State<HomeScreen> {
//   // final TextEditingController _textController = TextEditingController();
//   // final _pageController = PageController();

//   List<String> items = [
//     "Giulia",
//     "GT-R",
//     "Elmiraj",
//     "RX-V",
//   ];
//   String? valueChoose;

//   int index = 0;

//   void changeValueOfIndex(int value) {
//     setState(() {
//       index = value;
//     });
//   }

//   List<ImageModel> images = [
//     ImageModel(
//       id: 1,
//       imageType: "Extreme bump test",
//       imageName: 'first test! 100km/h extreme bump test',
//       imageImage: 'assets/images/cc.png',
//     ),
//     ImageModel(
//       id: 2,
//       imageType: "Extreme bump test",
//       imageName: 'first test! 100km/h extreme bump test',
//       imageImage: 'assets/images/cc.png',
//     ),
//     ImageModel(
//       id: 3,
//       imageType: "Extreme bump test",
//       imageName: 'first test! 100km/h extreme bump test',
//       imageImage: 'assets/images/cc.png',
//     ),
//   ];

//   List networkImage = [
//     'https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg?auto=compress&cs=tinysrgb&w=600',
//     'https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg?auto=compress&cs=tinysrgb&w=600',
//     'https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg?auto=compress&cs=tinysrgb&w=600',
//   ];

//   List<CarItemModel> carsItems = [
//     CarItemModel(
//       id: 1,
//       carName: "Lamborghini",
//       carPrice: '\$67.600',
//       carImage: 'assets/images/car.png',
//       carFColor: Colors.amber,
//       carSColor: Colors.red,
//       carTColor: Colors.blue,
//     ),
//     CarItemModel(
//       id: 2,
//       carName: "Lamborghini",
//       carPrice: '\$67.600',
//       carImage: 'assets/images/car.png',
//       carFColor: Colors.amber,
//       carSColor: Colors.red,
//       carTColor: Colors.blue,
//     ),
//     CarItemModel(
//       id: 3,
//       carName: "Lamborghini",
//       carPrice: '\$67.600',
//       carImage: 'assets/images/car.png',
//       carFColor: Colors.amber,
//       carSColor: Colors.red,
//       carTColor: Colors.blue,
//     ),
//     CarItemModel(
//       id: 4,
//       carName: "Lamborghini",
//       carPrice: '\$67.600',
//       carImage: 'assets/images/car.png',
//       carFColor: Colors.amber,
//       carSColor: Colors.red,
//       carTColor: Colors.blue,
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     var imagesIndex;
//     return GetBuilder<HomeController>(
//       init: HomeController(),
//       builder: (controller) {
//         return Scaffold(
//           appBar: AppBar(
//             backgroundColor: AppTheme.colors.primaryColor,
//             actions: [
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsetsDirectional.only(
//                     start: 20.0,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         width: 75.w,
//                         child: DropdownButton(
//                           underline: SizedBox(),
//                           // dropdownColor: Colors.green,
//                           icon: Icon(
//                             Icons.arrow_drop_down,
//                             color: Colors.grey,
//                           ),
//                           hint: Text(
//                             "Bangkok: ",
//                             style: TextStyle(
//                                 fontSize: 12.0.sp, color: Colors.grey),
//                           ),
//                           value: valueChoose,
//                           onChanged: (newValue) {
//                             setState(() {
//                               valueChoose = newValue as String?;
//                             });
//                           },
//                           items: items.map((valueItem) {
//                             return DropdownMenuItem(
//                                 value: valueItem,
//                                 child: Text(
//                                   valueItem,
//                                   style: TextStyle(
//                                       fontSize: 12.0, color: Colors.grey),
//                                 ));
//                           }).toList(),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 203.w,
//                         child: Stack(
//                           alignment: Alignment.centerLeft,
//                           children: [
//                             CustomTextFormWithRecord(
//                               text: "Search",
//                               height: 30.h,
//                               borderRadius: 25.r,
//                               color: AppTheme.colors.White,
//                               prefixIcon: Padding(
//                                 padding: EdgeInsets.all(12.h),
//                               ),
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .bodyText1
//                                   ?.copyWith(
//                                       fontSize: 14.sp,
//                                       fontWeight: FontWeight.w400,
//                                       color: AppTheme.colors.secondryColorText),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: 10.w),
//                               child: Image.asset(
//                                 "assets/images/search.png",
//                                 color: AppTheme.colors.iconColor,
//                                 height: 20.h,
//                                 width: 20.w,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsetsDirectional.only(start: 21.0),
//                         child: Container(
//                           width: 30.w,
//                           height: 30.h,
//                           padding: EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                               color: Colors.white, shape: BoxShape.circle),
//                           alignment: Alignment.center,
//                           child: Stack(
//                             alignment: Alignment.center,
//                             children: [
//                               Icon(
//                                 Icons.message,
//                                 size: 10,
//                                 color: Colors.black,
//                               ),
//                               Align(
//                                 alignment: Alignment.topRight,
//                                 child: Container(
//                                   width: 10.w,
//                                   height: 10.h,
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     color: Colors.red,
//                                   ),
//                                   child: Row(
//                                     children: [
//                                       Text(
//                                         '10',
//                                         style: TextStyle(
//                                           fontSize: 8.0.sp,
//                                           color: Colors.white,
//                                         ),
//                                         textAlign: TextAlign.center,
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       Container(
//                         height: 168.h,
//                         // width: 280.w,
//                         clipBehavior: Clip.hardEdge,
//                         margin:
//                             EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(17.r),
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Colors.grey[400]!, blurRadius: 6),
//                             ]),
//                         child: Column(
//                           children: [
//                             SizedBox(
//                               height: 168.h,
//                               child: Stack(
//                                 children: [
//                                   ScrollConfiguration(
//                                     behavior: ScrollBehavior(),
//                                     //  MyBehavior(),
//                                     child: PageView.builder(
//                                       scrollDirection: Axis.horizontal,
//                                       pageSnapping: true,
//                                       controller: pController,
//                                       itemCount: images.length,
//                                       itemBuilder: (_, index) {
//                                         return SizedBox(
//                                           height: double.infinity,
//                                           child: ClipRRect(
//                                             child: CachedNetworkImage(
//                                               imageUrl: networkImage[index],
//                                               fit: BoxFit.cover,
//                                               placeholder: (context, url) =>
//                                                   SpinKitFadingCircle(
//                                                 color: Colors.black,
//                                                 size: 50.0,
//                                               ),
//                                               errorWidget:
//                                                   (context, url, error) =>
//                                                       Icon(Icons.error),
//                                             ),
//                                           ),
//                                         );
//                                       },
//                                     ),
//                                   ),
//                                   Align(
//                                     alignment: Alignment.bottomCenter,
//                                     child: Container(
//                                       margin:
//                                           EdgeInsets.symmetric(vertical: 8.h),
//                                       child: SmoothPageIndicator(
//                                         controller: pController,
//                                         count: images.length,
//                                         effect: ExpandingDotsEffect(
//                                             dotHeight: 8.w,
//                                             dotWidth: 8.w,
//                                             dotColor:
//                                                 Color(hexColor('#2A3034')),
//                                             spacing: 5.w,
//                                             activeDotColor:
//                                                 Color(hexColor('#1DB854'))),
//                                         onDotClicked: (index) {
//                                           pController.animateToPage(index,
//                                               duration: const Duration(
//                                                   milliseconds: 500),
//                                               curve: Curves.ease);
//                                         },
//                                       ),
//                                     ),
//                                   ),
//                                   PositionedDirectional(
//                                       bottom: 41.h,
//                                       start: 21.w,
//                                       child: Text(
//                                         'Extreme bump test',
//                                         style: TextStyle(
//                                             fontSize: 12.sp,
//                                             color: Colors.grey),
//                                       )),
//                                   PositionedDirectional(
//                                       bottom: 20.h,
//                                       start: 20.w,
//                                       child: Text(
//                                         'First test! 100km/h extreme bump test',
//                                         style: TextStyle(
//                                             fontSize: 14.sp,
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.w700),
//                                       ))
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 15.h,
//                       ),
//                       Padding(
//                         padding: const EdgeInsetsDirectional.only(start: 20),
//                         child: SizedBox(
//                           height: 40.0.h,
//                           child: ListView.separated(
//                               shrinkWrap: true,
//                               scrollDirection: Axis.horizontal,
//                               itemBuilder: (context, index) => GestureDetector(
//                                     onTap: () {
//                                       changeValueOfIndex(index);
//                                     },
//                                     child: Stack(
//                                       alignment: Alignment.topLeft,
//                                       clipBehavior: Clip.none,
//                                       children: [
//                                         this.index == index
//                                             ? const Positioned(
//                                                 top: 1,
//                                                 child: CircleAvatar(
//                                                   radius: 3,
//                                                   backgroundColor: Colors.red,
//                                                 ))
//                                             : Container(),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(top: 10),
//                                           child: Container(
//                                             height: 30..h,
//                                             width: 85.w,
//                                             decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                                 borderRadius:
//                                                     BorderRadius.circular(30)),
//                                             child: Row(
//                                               children: [
//                                                 Icon(
//                                                   Icons.ice_skating_outlined,
//                                                   size: 10,
//                                                 ),
//                                                 SizedBox(
//                                                   width: 10.w,
//                                                 ),
//                                                 Text(
//                                                   items[index],
//                                                   style: const TextStyle(
//                                                       color: Colors.black),
//                                                   textAlign: TextAlign.center,
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                               separatorBuilder: (context, index) =>
//                                   const SizedBox(
//                                     width: 20,
//                                   ),
//                               itemCount: items.length),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10.h,
//                       ),
//                       Padding(
//                         padding: const EdgeInsetsDirectional.only(
//                             start: 20.0, end: 20),
//                         child: Row(
//                           children: [
//                             Text(
//                               'Top deal',
//                               style: TextStyle(
//                                 fontSize: 25.0.sp,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Spacer(),
//                             // SizedBox(width: 200.w),
//                             TextButton(
//                               child: Row(children: [
//                                 Text(
//                                   'More',
//                                   style: TextStyle(color: Colors.green),
//                                 ),
//                                 Icon(Icons.arrow_forward_ios_outlined,
//                                     color: Colors.green),
//                               ]),
//                               onPressed: null,
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 5.h,
//                       ),
//                       Padding(
//                         padding: const EdgeInsetsDirectional.only(
//                             start: 20, end: 20),
//                         child: SingleChildScrollView(
//                           child: Column(
//                             children: [
//                               SizedBox(
//                                 height: 240.h,
//                                 child: ListView.builder(
//                                     itemCount: carsItems.length,
//                                     scrollDirection: Axis.horizontal,
//                                     itemBuilder: (context, index) =>
//                                         buildCarItem(carsItems[index],
//                                             imagesIndex = index, context)),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsetsDirectional.only(start: 20.0, end: 20),
//                   child: Row(
//                     children: [
//                       Text(
//                         'Popular brands',
//                         style: TextStyle(
//                             fontSize: 25.0.sp, fontWeight: FontWeight.bold),
//                       ),
//                       Spacer(),
//                       TextButton(
//                         child: Row(children: [
//                           Text(
//                             'More',
//                             style: TextStyle(color: Colors.green),
//                           ),
//                           Icon(Icons.arrow_forward_ios_outlined,
//                               color: Colors.green),
//                         ]),
//                         onPressed: () {},
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsetsDirectional.only(start: 20.0, end: 20),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 102.h,
//                           child: ListView.builder(
//                               itemCount: carsItems.length,
//                               scrollDirection: Axis.horizontal,
//                               itemBuilder: (context, index) =>
//                                   buildCarModelItem(carsItems[index],
//                                       imagesIndex = index, context)),
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               'Upcoming',
//                               style: TextStyle(
//                                   fontSize: 25.0.sp,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Spacer(),
//                             TextButton(
//                               child: Row(children: [
//                                 Text(
//                                   'More',
//                                   style: TextStyle(color: Colors.green),
//                                 ),
//                                 Icon(Icons.arrow_forward_ios_outlined,
//                                     color: Colors.green),
//                               ]),
//                               onPressed: () {},
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15.h,
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsetsDirectional.only(start: 20.0, end: 20),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 200.h,
//                           child: ListView.builder(
//                               itemCount: carsItems.length,
//                               scrollDirection: Axis.horizontal,
//                               itemBuilder: (context, index) =>
//                                   buildUpcomingCarItem(carsItems[index],
//                                       imagesIndex = index, context)),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsetsDirectional.only(start: 20.0, end: 20),
//                   child: Row(
//                     children: [
//                       Text(
//                         'News',
//                         style: TextStyle(
//                             fontSize: 25.0.sp, fontWeight: FontWeight.bold),
//                       ),
//                       Spacer(),
//                       // SizedBox(width: 240),
//                       TextButton(
//                         child: Row(children: [
//                           Text(
//                             'More',
//                             style: TextStyle(color: Colors.green),
//                           ),
//                           Icon(Icons.arrow_forward_ios_outlined,
//                               color: Colors.green),
//                         ]),
//                         onPressed: () {},
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsetsDirectional.only(start: 20.0, end: 20),
//                   child: ListView.builder(
//                       padding: EdgeInsets.all(0),
//                       shrinkWrap: true,
//                       physics: NeverScrollableScrollPhysics(),
//                       itemCount: carsItems.length,
//                       scrollDirection: Axis.vertical,
//                       itemBuilder: (context, index) => buildNewsCarItem(
//                           carsItems[index], imagesIndex = index, context)),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// Widget buildImagesItem(ImageModel image, int index, BuildContext con) =>
//     GestureDetector(
//       // onTap: () {
//       //   Navigator.push(
//       //       con,
//       //       MaterialPageRoute(
//       //         builder: (context) => DetailsScreen1(
//       //           productM: product,
//       //         ),
//       //       ));
//       // },
//       child: Stack(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Image(
//               fit: BoxFit.cover,
//               // image: AssetImage('${product.ProductImage}'),
//               image: AssetImage("${image.imageImage}"),
//               width: 335.w,
//               height: 168.h,
//             ),
//           ),
//           Positioned(
//             child: Center(
//               child: Text(
//                 '${image.imageType}',
//                 style: TextStyle(
//                     color: Colors.grey[300], overflow: TextOverflow.ellipsis),
//               ),
//             ),
//             bottom: 40,
//             left: 20,
//           ),
//           Positioned(
//             child: Text(
//               '${image.imageName}',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20.sp,
//                   overflow: TextOverflow.ellipsis,
//                   fontWeight: FontWeight.bold),
//             ),
//             bottom: 15,
//             left: 20,
//             right: 20,
//           )
//         ],
//       ),
//     );

// Widget buildCarModelItem(CarItemModel image, int index, BuildContext con) =>
//     GestureDetector(
//       child: Container(
//         margin: EdgeInsetsDirectional.only(end: 10.0),
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.all(Radius.circular(20.0))),
//         width: 102.w,
//         height: 102.h,
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: Image(
//                   // image: AssetImage('${product.ProductImage}'),
//                   image: AssetImage("${image.carImage}"),
//                   height: 60.0.h,
//                   width: 80.0.w,
//                 ),
//               ),
//               Text(
//                 '${image.carName}',
//                 style: TextStyle(
//                     color: Colors.grey[500], overflow: TextOverflow.ellipsis),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
