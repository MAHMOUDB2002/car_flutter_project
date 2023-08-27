import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_project/modules/views/Authentication/login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/components/color.dart';
import '../controllers/home_controller.dart';

class PopularBrandScreen extends GetView<HomeController> {
  // Function function;
  // PopularBrandScreen(this.function);
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var imagesIndex;
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              leading: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: AppColor.grey6,
                ),
              ),
              title: Center(
                child: Text(
                  'Brands',
                  style: TextStyle(fontSize: 14.sp, color: AppColor.grey6),
                ),
              ),
            ),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          start: 10.0, end: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // GestureDetector(
                              //   child: Icon(
                              //     Icons.arrow_back,
                              //     color: Colors.black,
                              //   ),
                              //   onTap: () {
                              //     Get.offAllNamed("/layout");
                              //   },
                              // ),
                              // SizedBox(
                              //   width: 140.w,
                              // ),
                            ],
                          ),
                          // SizedBox(
                          //   height: 30.h,
                          // ),
                          Padding(
                            padding:
                                const EdgeInsetsDirectional.only(start: 5.0),
                            child: Text(
                              'Popular brands',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.sp),
                            ),
                          ),
                          SizedBox(
                            height: 200,
                            child: GridView.builder(
                                shrinkWrap: true,
                                // physics: NeverScrollableScrollPhysics(),
                                // physics: BouncingScrollPhysics(), بتخلي التطبيق يعمل سكرول غريب
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  // childAspectRatio: 1,
                                  // crossAxisSpacing: 10,
                                  // mainAxisSpacing: 10
                                ),
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    controller.homeModel?.data?.brands?.length,
                                //  carsItems.length,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                        child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 20.0,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 75.w,
                                            height: 75.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color:
                                                    Color(hexColor('#F1F2F3'))),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                // Image(
                                                //   width: 61,
                                                //   height: 45,
                                                //   image: AssetImage(
                                                //       '${carItem.carImage}'),
                                                // ),

                                                CachedNetworkImage(
                                                  imageUrl:
                                                      '${controller.homeModel?.data?.brands?[index].logo}',
                                                  placeholder: (context, url) =>
                                                      SizedBox(
                                                    child: Center(
                                                      child:
                                                          CircularProgressIndicator(
                                                        color: AppColor
                                                            .secondryColor,
                                                      ),
                                                    ),
                                                  ),
                                                  fit: BoxFit.contain,
                                                  // width: double.infinity,
                                                  width: 61,
                                                  height: 45,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  "${controller.homeModel?.data?.cars?[index].name}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 8),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))

                                // buildPopularBrandItem(carsItems[index],
                                //     imagesIndex = index, context)

                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Color(hexColor('#F1F2F3')),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(start: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '${controller.homeModel?.data?.brands!.length}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: SizedBox(
                        height: 500,
                        child: ListView.builder(
                            padding: EdgeInsetsDirectional.zero,
                            shrinkWrap: true,
                            // physics: NeverScrollableScrollPhysics(),
                            // physics: BouncingScrollPhysics(), بتخلي التطبيق يعمل سكرول غريب
                            scrollDirection: Axis.vertical,
                            itemCount:
                                controller.homeModel?.data?.brands?.length,
                            itemBuilder: (context, index) => GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 375.w,
                                    height: 50.h,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CachedNetworkImage(
                                          imageUrl:
                                              '${controller.homeModel?.data?.brands?[index].logo}',
                                          placeholder: (context, url) =>
                                              SizedBox(
                                            child: Center(
                                              child: CircularProgressIndicator(
                                                color: AppColor.secondryColor,
                                              ),
                                            ),
                                          ),
                                          // fit: BoxFit.contain,
                                          width: 25.w,
                                          height: 25.h,
                                        ),

                                        // Image(
                                        //   width: 25.w,
                                        //   height: 25.h,
                                        //   image:
                                        //       AssetImage('${controller.homeModel?.data?.brands?.length}'),
                                        // ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Text(
                                          '${controller.homeModel?.data?.brands?[index].name}',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp),
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
