import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_project/model/car_item_model.dart';
import 'package:car_project/modules/controllers/buy_car_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/components/color.dart';
import '../../widgets/customTextFormWithRecord.dart';
import '../../widgets/custom_list_view.dart';
import '../../widgets/custom_size_box.dart';
import '../../widgets/custom_svg_image.dart';
import '../../widgets/custom_text2.dart';
import 'Authentication/login_Screen.dart';

class BuyCarScreen extends StatefulWidget {
  // Function function;
  // BuyCarScreen(this.function);

  @override
  State<BuyCarScreen> createState() => _BuyCarScreenState();
}

class _BuyCarScreenState extends State<BuyCarScreen> {
  final TextEditingController _textController = TextEditingController();
  String? valueChoose;
  List<String> items = [
    "Giulia",
    "GT-R",
    "Elmiraj",
    "RX-V",
  ];

  int index = 0;

  void changeValueOfIndex(int value) {
    setState(() {
      index = value;
    });
  }

  List<CarItemModel> carsItems = [
    CarItemModel(
      id: 1,
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carImage: 'assets/images/car.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 2,
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carImage: 'assets/images/car.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 3,
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carImage: 'assets/images/car.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 4,
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carImage: 'assets/images/car.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 5,
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carImage: 'assets/images/car.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var imagesIndex;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          valueChoose = newValue as String?;
                        });
                      },
                      items: items.map((valueItem) {
                        return DropdownMenuItem(
                            value: valueItem,
                            child: Text(
                              valueItem,
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey),
                            ));
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: 203.w,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        CustomTextFormWithRecord(
                          text: "Search",
                          height: 30.h,
                          borderRadius: 25.r,
                          color: AppColor.White,
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(12.h),
                          ),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.secondryColorText),
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
                    padding: const EdgeInsetsDirectional.only(start: 21.0),
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      alignment: Alignment.center,
                      child: Icon(
                        size: 17,
                        Icons.filter_alt_outlined,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: GetBuilder<BuyCarController>(
        init: BuyCarController(),
        builder: (controller) => controller.loading
            ? Center(
                child: CircularProgressIndicator(
                color: Colors.green,
              ))
            : SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 20.0, end: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                                    // fit: BoxFit.contain,
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                                  // Image.network(
                                  //   "${controller.homeModel?.data?.brands?[index].logo}",
                                  //   height: 20.h,
                                  //   width: 20.w,
                                  // ),
                                  SizedBox(
                                    width: 5.w,
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
                      Text(
                        'Top deal',
                        style: TextStyle(
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        child: GridView.builder(
                            padding: EdgeInsets.only(
                              top: 10,
                            ),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisExtent: 250,
                                    // childAspectRatio: 1,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10),
                            scrollDirection: Axis.vertical,
                            itemCount: controller.homeModel!.data!.cars!.length,
                            itemBuilder: (context, index) => GestureDetector(
                                  child: Stack(
                                    children: [
                                      Container(
                                        // margin: EdgeInsets.symmetric(vertical: 5.0),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0))),
                                        width: 160.w,
                                        height: 225.h,
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  start: 15.0, end: 17),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15),
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                        '${controller.homeModel?.data?.cars?[index].image}',
                                                    placeholder:
                                                        (context, url) =>
                                                            const SizedBox(
                                                      child: Center(
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: AppColor
                                                              .secondryColor,
                                                        ),
                                                      ),
                                                    ),
                                                    height: 80.0.h,
                                                    width: 120.0.w,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '${controller.homeModel?.data?.cars?[index].name}',
                                                      style: TextStyle(
                                                          fontSize: 14.0.sp,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                    ),
                                                    SizedBox(
                                                      height: 5.0.h,
                                                    ),
                                                    Text(
                                                      '${controller.homeModel?.data?.cars?[index].acceleration}',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10.sp,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  children: [
                                                    CustomListView(
                                                      height: 10.h,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      separatorBuilder:
                                                          SizedBox(),
                                                      itemBuilder:
                                                          (context, index) =>
                                                              Container(
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            GestureDetector(
                                                                onTap: () {
                                                                  controller
                                                                      .changeValueOfIndex(
                                                                          index);
                                                                },
                                                                child:
                                                                    CircleAvatar(
                                                                  radius: 10.h,
                                                                  backgroundColor:
                                                                      Color(controller
                                                                              .myColors[
                                                                          index]),
                                                                )),
                                                            controller.index ==
                                                                    index
                                                                ? CircleAvatar(
                                                                    radius:
                                                                        15.h,
                                                                    backgroundColor: Color(controller.myColors[
                                                                            index])
                                                                        .withOpacity(
                                                                            0.55),
                                                                  )
                                                                : Container(),
                                                          ],
                                                        ),
                                                      ),
                                                      itemCount: controller
                                                          .myColors.length,
                                                    ),

                                                    // Container(
                                                    //   width: 10.0.w,
                                                    //   height: 10.0.h,
                                                    //   decoration: BoxDecoration(
                                                    //       color: carItem.carFColor,
                                                    //       borderRadius:
                                                    //           BorderRadius.all(Radius.circular(10.0))),
                                                    // ),
                                                    // SizedBox(
                                                    //   width: 7.0.w,
                                                    // ),
                                                    // Container(
                                                    //   decoration: BoxDecoration(
                                                    //       color: carItem.carSColor,
                                                    //       borderRadius:
                                                    //           BorderRadius.all(Radius.circular(10.0))),
                                                    //   width: 10.0.w,
                                                    //   height: 10.0.h,
                                                    // ),
                                                    // SizedBox(
                                                    //   width: 7.0.w,
                                                    // ),
                                                    // Container(
                                                    //   decoration: BoxDecoration(
                                                    //       color: carItem.carTColor,
                                                    //       borderRadius:
                                                    //           BorderRadius.all(Radius.circular(10.0))),
                                                    //   width: 10.0.w,
                                                    //   height: 10.0.h,
                                                    // ),
                                                    Spacer(),
                                                    Text(
                                                      '\$${controller.homeModel?.data?.cars?[index].price}',
                                                      style: TextStyle(
                                                          fontSize: 14.0.sp,
                                                          color: Colors.green,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          fontWeight: FontWeight
                                                              .normal),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 46.w,
                                        height: 23.h,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10)),
                                            color: Colors.green[100]),
                                        child: Center(
                                            child: Text(
                                          'Offer',
                                          style: TextStyle(
                                              color:
                                                  Color(hexColor('##1DB854'))),
                                        )),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.favorite_border))
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}


// // class BuyCarScreen extends StatefulWidget {
// //   // Function function;
// //   // BuyCarScreen(this.function);

// //   @override
// //   State<BuyCarScreen> createState() => _BuyCarScreenState();
// // }

// class BuyCarScreen extends StatelessWidget {
//   const BuyCarScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // var imagesIndex;
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: AppColor.primaryColor,
//       //   actions: [
//       //     Expanded(
//       //       child: Padding(
//       //         padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20),
//       //         child: Row(
//       //           mainAxisAlignment: MainAxisAlignment.start,
//       //           children: [
//       //             SizedBox(
//       //               width: 80.w,
//       //               child: DropdownButton(
//       //                 underline: const SizedBox(),
//       //                 // dropdownColor: Colors.green,
//       //                 icon: const Icon(
//       //                   Icons.arrow_drop_down,
//       //                   color: Colors.grey,
//       //                 ),
//       //                 hint: Text(
//       //                   "Bangkok: ",
//       //                   style: TextStyle(fontSize: 12.0.sp, color: Colors.grey),
//       //                 ),
//       //                 value: controller.valueChoose,
//       //                 onChanged: (newValue) {
//       //                   // setState(() {
//       //                   controller.valueChoose = newValue;
//       //                   // });
//       //                 },
//       //                 items: controller.items.map((valueItem) {
//       //                   return DropdownMenuItem(
//       //                       value: valueItem,
//       //                       child: Text(
//       //                         valueItem,
//       //                         style: const TextStyle(
//       //                             fontSize: 12.0, color: Colors.grey),
//       //                       ));
//       //                 }).toList(),
//       //               ),
//       //             ),
//       //             SizedBox(
//       //               width: 203.w,
//       //               child: Stack(
//       //                 alignment: Alignment.centerLeft,
//       //                 children: [
//       //                   CustomTextFormWithRecord(
//       //                     text: "Search",
//       //                     height: 30.h,
//       //                     borderRadius: 25.r,
//       //                     color: AppColor.White,
//       //                     prefixIcon: Padding(
//       //                       padding: EdgeInsets.all(12.h),
//       //                     ),
//       //                     style: Theme.of(context)
//       //                         .textTheme
//       //                         .bodyText1
//       //                         ?.copyWith(
//       //                             fontSize: 14.sp,
//       //                             fontWeight: FontWeight.w400,
//       //                             color: AppColor.secondryColorText),
//       //                   ),
//       //                   Padding(
//       //                     padding: EdgeInsets.only(left: 10.w),
//       //                     child: Image.asset(
//       //                       "assets/images/search.png",
//       //                       color: AppColor.iconColor,
//       //                       height: 20.h,
//       //                       width: 20.w,
//       //                       fit: BoxFit.cover,
//       //                     ),
//       //                   ),
//       //                 ],
//       //               ),
//       //             ),
//       //             Padding(
//       //               padding: const EdgeInsetsDirectional.only(start: 20.0),
//       //               child: Container(
//       //                 width: 30.w,
//       //                 height: 30.h,
//       //                 padding: const EdgeInsets.all(8),
//       //                 decoration: const BoxDecoration(
//       //                     color: Colors.white, shape: BoxShape.circle),
//       //                 alignment: Alignment.center,
//       //                 child: const Icon(
//       //                   size: 17,
//       //                   Icons.filter_alt_outlined,
//       //                   color: Colors.green,
//       //                 ),
//       //               ),
//       //             ),
//       //           ],
//       //         ),
//       //       ),
//       //     )
//       //   ],
//       // ),
//       body: GetBuilder<BuyCarController>(
//         init: BuyCarController(),
//         builder: (controller) => Padding(
//           padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [

//               Text(
//                 'Top deal',
//                 style: TextStyle(
//                   fontSize: 20.0.sp,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               GridView.builder(
//                 padding: const EdgeInsets.only(
//                   top: 20,
//                 ),
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     mainAxisExtent: 250,
//                     // childAspectRatio: 1,
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10),
//                 scrollDirection: Axis.vertical,
//                 //carsItems.length,
//                 itemBuilder: (context, index) => Column(
//                   children: [
//                     Container(
//                       // margin: EdgeInsets.symmetric(vertical: 5.0),
//                       decoration: const BoxDecoration(
//                           color: Colors.white,
//                           borderRadius:
//                               BorderRadius.all(Radius.circular(20.0))),
//                       width: 160.w,
//                       height: 225.h,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           CachedNetworkImage(
//                             imageUrl:
//                                 '${controller.homeModel?.data?.cars?[index].image}',
//                             placeholder: (context, url) => const SizedBox(
//                               child: Center(
//                                 child: CircularProgressIndicator(
//                                   color: AppColor.secondryColor,
//                                 ),
//                               ),
//                             ),
//                             height: 80.0.h,
//                             width: 120.0.w,
//                             fit: BoxFit.cover,
//                           ),
//                           Text(
//                             '${controller.homeModel?.data?.cars?[index].name}',
//                             style: TextStyle(
//                                 fontSize: 14.0.sp,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                                 overflow: TextOverflow.ellipsis),
//                           ),
//                           SizedBox(
//                             height: 5.0.h,
//                           ),
//                           Text(
//                             '${controller.homeModel?.data?.cars?[index].acceleration}',
//                             style: TextStyle(
//                               color: Colors.grey,
//                               fontSize: 10.sp,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                           // Column(
//                           //   crossAxisAlignment: CrossAxisAlignment.start,
//                           //   children: [

//                           //   ],
//                           // ),
//                           // Expanded(
//                           //   flex: 1,
//                           //   child: Row(
//                           //     children: [
//                           // CustomListView(
//                           //   height: 10.h,
//                           //   shrinkWrap: true,
//                           //   scrollDirection: Axis.horizontal,
//                           //   separatorBuilder: const SizedBox(),
//                           //   itemBuilder: (context, index) => Stack(
//                           //     alignment: Alignment.center,
//                           //     children: [
//                           //       GestureDetector(
//                           //           onTap: () {
//                           //             controller.changeValueOfIndex(
//                           //                 index);
//                           //           },
//                           //           child: CircleAvatar(
//                           //             radius: 10.h,
//                           //             backgroundColor: Color(
//                           //                 controller
//                           //                     .myColors[index]),
//                           //           )),
//                           //       index == index
//                           //           ? CircleAvatar(
//                           //               radius: 15.h,
//                           //               backgroundColor: Color(
//                           //                       controller.myColors[
//                           //                           index])
//                           //                   .withOpacity(0.55),
//                           //             )
//                           //           : Container(),
//                           //     ],
//                           //   ),
//                           //   itemCount: controller.myColors.length,
//                           // ),
//                           //  const Spacer(),
//                           Text(
//                             '\$${controller.homeModel?.data?.cars?[index].price}',
//                             style: TextStyle(
//                                 fontSize: 9.0.sp,
//                                 color: Colors.green,
//                                 overflow: TextOverflow.ellipsis,
//                                 fontWeight: FontWeight.normal),
//                           ),
//                         ],
//                         // ),
//                         // )
//                         // ],
//                       ),
//                     ),
//                     Container(
//                       width: 46.w,
//                       height: 23.h,
//                       decoration: BoxDecoration(
//                           borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(10),
//                               bottomRight: Radius.circular(10)),
//                           color: Colors.green[100]),
//                       child: const Center(
//                           child: Text(
//                         'Offer',
//                         style: TextStyle(color: AppColor.secondryColor),
//                       )),
//                     ),
//                     IconButton(
//                         onPressed: () {},
//                         icon: const Icon(Icons.favorite_border)),
//                   ],
//                 ),
//                 itemCount: controller.homeModel?.data?.cars?.length,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

































//   // List<CarItemModel> carsItems = [
//   //   CarItemModel(
//   //     id: 1,
//   //     carName: "Lamborghini",
//   //     carPrice: '\$67.600',
//   //     carImage: 'assets/images/car.png',
//   //     carFColor: Colors.amber,
//   //     carSColor: Colors.red,
//   //     carTColor: Colors.blue,
//   //   ),
//   //   CarItemModel(
//   //     id: 2,
//   //     carName: "Lamborghini",
//   //     carPrice: '\$67.600',
//   //     carImage: 'assets/images/car.png',
//   //     carFColor: Colors.amber,
//   //     carSColor: Colors.red,
//   //     carTColor: Colors.blue,
//   //   ),
//   //   CarItemModel(
//   //     id: 3,
//   //     carName: "Lamborghini",
//   //     carPrice: '\$67.600',
//   //     carImage: 'assets/images/car.png',
//   //     carFColor: Colors.amber,
//   //     carSColor: Colors.red,
//   //     carTColor: Colors.blue,
//   //   ),
//   //   CarItemModel(
//   //     id: 4,
//   //     carName: "Lamborghini",
//   //     carPrice: '\$67.600',
//   //     carImage: 'assets/images/car.png',
//   //     carFColor: Colors.amber,
//   //     carSColor: Colors.red,
//   //     carTColor: Colors.blue,
//   //   ),
//   //   CarItemModel(
//   //     id: 5,
//   //     carName: "Lamborghini",
//   //     carPrice: '\$67.600',
//   //     carImage: 'assets/images/car.png',
//   //     carFColor: Colors.amber,
//   //     carSColor: Colors.red,
//   //     carTColor: Colors.blue,
//   //   ),
//   // ];


// // return GetBuilder<HomeController>(
// //     init: HomeController(),
// //     builder: (controller) {

// // Widget buildCarItem(CarItemModel carItem, int index, BuildContext con) {
// //   return GetBuilder<BuyCarController>(
// //     init: BuyCarController(),
// //     builder: (controller) {
// //       return GestureDetector(
// //         // onTap: () {
// //         //   Navigator.push(
// //         //       con,
// //         //       MaterialPageRoute(
// //         //         builder: (context) => DetailsScreen1(
// //         //           productM: product,
// //         //         ),
// //         //       ));
// //         // },
// //         child: Stack(
// //           children: [
// //             Container(
// //               // margin: EdgeInsets.symmetric(vertical: 5.0),
// //               decoration: BoxDecoration(
// //                   color: Colors.white,
// //                   borderRadius: BorderRadius.all(Radius.circular(20.0))),
// //               width: 160.w,
// //               height: 225.h,
// //               child: Padding(
// //                 padding: const EdgeInsetsDirectional.only(start: 15.0, end: 17),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Expanded(
// //                       flex: 2,
// //                       child: Image(
// //                         // image: AssetImage('${product.ProductImage}'),
// //                         image: AssetImage("${carItem.carImage}"),
// //                         height: 80.0.h,
// //                         width: 120.0.w,
// //                       ),
// //                     ),
// //                     Expanded(
// //                       flex: 1,
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             '${carItem.carName}',
// //                             style: TextStyle(
// //                                 fontSize: 14.0.sp,
// //                                 color: Colors.black,
// //                                 fontWeight: FontWeight.bold,
// //                                 overflow: TextOverflow.ellipsis),
// //                           ),
// //                           SizedBox(
// //                             height: 5.0.h,
// //                           ),
// //                           Text(
// //                             '${carItem.carName}',
// //                             style: TextStyle(
// //                               color: Colors.grey,
// //                               fontSize: 10.sp,
// //                               overflow: TextOverflow.ellipsis,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                     Expanded(
// //                       flex: 1,
// //                       child: Row(
// //                         children: [
// //                           CustomListView(
// //                             height: 10.h,
// //                             shrinkWrap: true,
// //                             scrollDirection: Axis.horizontal,
// //                             separatorBuilder: SizedBox(),
// //                             itemBuilder: (context, index) => Container(
// //                               child: Stack(
// //                                 alignment: Alignment.center,
// //                                 children: [
// //                                   GestureDetector(
// //                                       onTap: () {
// //                                         controller.changeValueOfIndex(index);
// //                                       },
// //                                       child: CircleAvatar(
// //                                         radius: 10.h,
// //                                         backgroundColor:
// //                                             Color(controller.myColors[index]),
// //                                       )),
// //                                   controller.index == index
// //                                       ? CircleAvatar(
// //                                           radius: 15.h,
// //                                           backgroundColor:
// //                                               Color(controller.myColors[index])
// //                                                   .withOpacity(0.55),
// //                                         )
// //                                       : Container(),
// //                                 ],
// //                               ),
// //                             ),
// //                             itemCount: controller.myColors.length,
// //                           ),

//  // SizedBox(
//                       //   height: 40.0.h,
//                       //   child: ListView.separated(
//                       //       shrinkWrap: true,
//                       //       scrollDirection: Axis.horizontal,
//                       //       itemBuilder: (context, index) => GestureDetector(
//                       //             onTap: () {
//                       //               changeValueOfIndex(index);
//                       //             },
//                       //             child: Stack(
//                       //               alignment: Alignment.topLeft,
//                       //               clipBehavior: Clip.none,
//                       //               children: [
//                       //                 this.index == index
//                       //                     ? const Positioned(
//                       //                         top: 1,
//                       //                         child: CircleAvatar(
//                       //                           radius: 3,
//                       //                           backgroundColor: Colors.red,
//                       //                         ))
//                       //                     : Container(),
//                       //                 Padding(
//                       //                   padding: const EdgeInsets.only(top: 10),
//                       //                   child: Container(
//                       //                     height: 30.h,
//                       //                     width: 85.w,
//                       //                     decoration: BoxDecoration(
//                       //                         color: Colors.white,
//                       //                         borderRadius:
//                       //                             BorderRadius.circular(30)),
//                       //                     child: Row(
//                       //                       children: [
//                       //                         Icon(
//                       //                           Icons.ice_skating_outlined,
//                       //                           size: 10,
//                       //                         ),
//                       //                         SizedBox(
//                       //                           width: 10.w,
//                       //                         ),
//                       //                         Text(
//                       //                           items[index],
//                       //                           style: const TextStyle(
//                       //                               color: Colors.black),
//                       //                           textAlign: TextAlign.center,
//                       //                         ),
//                       //                       ],
//                       //                     ),
//                       //                   ),
//                       //                 ),
//                       //               ],
//                       //             ),
//                       //           ),
//                       //       separatorBuilder: (context, index) => const SizedBox(
//                       //             width: 20,
//                       //           ),
//                       //       itemCount: items.length),
//                       // ),
//                       // SizedBox(
//                       //   height: 15.h,
//                       // ),
// //                           // Container(
// //                           //   width: 10.0.w,
// //                           //   height: 10.0.h,
// //                           //   decoration: BoxDecoration(
// //                           //       color: carItem.carFColor,
// //                           //       borderRadius:
// //                           //           BorderRadius.all(Radius.circular(10.0))),
// //                           // ),
// //                           // SizedBox(
// //                           //   width: 7.0.w,
// //                           // ),
// //                           // Container(
// //                           //   decoration: BoxDecoration(
// //                           //       color: carItem.carSColor,
// //                           //       borderRadius:
// //                           //           BorderRadius.all(Radius.circular(10.0))),
// //                           //   width: 10.0.w,
// //                           //   height: 10.0.h,
// //                           // ),
// //                           // SizedBox(
// //                           //   width: 7.0.w,
// //                           // ),
// //                           // Container(
// //                           //   decoration: BoxDecoration(
// //                           //       color: carItem.carTColor,
// //                           //       borderRadius:
// //                           //           BorderRadius.all(Radius.circular(10.0))),
// //                           //   width: 10.0.w,
// //                           //   height: 10.0.h,
// //                           // ),
// //                           Spacer(),
// //                           Text(
// //                             '${carItem.carPrice}',
// //                             style: TextStyle(
// //                                 fontSize: 14.0.sp,
// //                                 color: Colors.green,
// //                                 overflow: TextOverflow.ellipsis,
// //                                 fontWeight: FontWeight.normal),
// //                           ),
// //                         ],
// //                       ),
// //                     )
// //                   ],
// //                 ),
// //               ),
// //             ),
// //             Positioned(
// //                 child: Container(
// //               width: 46.w,
// //               height: 23.h,
// //               decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.only(
// //                       topLeft: Radius.circular(10),
// //                       bottomRight: Radius.circular(10)),
// //                   color: Colors.green[100]),
// //               child: Center(
// //                   child: Text(
// //                 'Offer',
// //                 style: TextStyle(color: Color(hexColor('##1DB854'))),
// //               )),
// //             )),
// //             Positioned(
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.end,
// //                 children: [
// //                   IconButton(
// //                       onPressed: () {}, icon: Icon(Icons.favorite_border))
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       );
// //     },
// //   );
// // }
