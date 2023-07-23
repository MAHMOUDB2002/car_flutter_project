import 'package:car_project/app/shared/style/AppTheme.dart';
import 'package:car_project/data/car_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/shared/style/components.dart';
import '../../../common_widget/customTextFormWithRecord.dart';

class NewsDetailsReviewScreen extends StatefulWidget {
  // Function function;
  // CommunityScreen(this.function);

  @override
  State<NewsDetailsReviewScreen> createState() =>
      NewsDetailsReviewScreenState();
}

class NewsDetailsReviewScreenState extends State<NewsDetailsReviewScreen> {
  final TextEditingController _textController = TextEditingController();

  String? valueChoose;
  List items = [
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
      carPrice:
          'Porsche has announced the name of its Tesla Model S rival, the production-spec Mission E concept. Called the Taycan, the electric sedan is all set to get into production by next year, ahead of its international debut in 2020. The Taycan will be the first electric car by Porsche and it will continue to be a performance-oriented sportscar staying true to the Porsche tradition.',
      carImage: 'assets/images/c2.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var imagesIndex;
    return Scaffold(
      backgroundColor: AppTheme.colors.primaryColor,
      appBar: AppBar(
          backgroundColor: AppTheme.colors.primaryColor,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          actions: [
            Container(
              width: 30.w,
              height: 30.h,
              padding: EdgeInsets.all(8),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              alignment: Alignment.center,
              child: Icon(
                size: 17,
                Icons.share,
                color: Colors.grey,
              ),
            ),
          ],
          title: Center(
            child: Text(
              'News',
              style: TextStyle(color: AppTheme.colors.grey6, fontSize: 14),
            ),
          )),
      body: buildAccountUserModelItem(
          carsItems[index], imagesIndex = index, context),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70.0.h,
        decoration: BoxDecoration(
            color: AppTheme.colors.primaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 5, start: 10, end: 10),
          child: Row(
            children: [
              SizedBox(
                width: 215.w,
                height: 30.h,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomTextFormWithRecord(
                      text: "Say something…",
                      height: 30.h,
                      borderRadius: 25.r,
                      color: AppTheme.colors.White,
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(12.h),
                      ),
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppTheme.colors.secondryColorText),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Icon(
                          Icons.comment_outlined,
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.comment_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 2.0.h,
                      ),
                      Text('34', style: TextStyle(fontSize: 8)),
                    ],
                  ),
                  SizedBox(
                    width: 15.0.w,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 2.0.h,
                      ),
                      Text(
                        '34',
                        style: TextStyle(fontSize: 8),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15.0.w,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star_border,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 2.0.h,
                      ),
                      Text('34', style: TextStyle(fontSize: 8)),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<CarItemModel> carsItems = [
  CarItemModel(
    id: 1,
    carName: "Lamborghini",
    carPrice:
        'Porsche has announced the name of its Tesla Model S rival, the production-spec Mission E concept. Called the Taycan, the electric sedan is all set to get into production by next year, ahead of its international debut in 2020. The Taycan will be the first electric car by Porsche and it will continue to be a performance-oriented sportscar staying true to the Porsche tradition.',
    carImage: 'assets/images/c2.png',
    carFColor: Colors.amber,
    carSColor: Colors.red,
    carTColor: Colors.blue,
  ),
  CarItemModel(
    id: 1,
    carName: "Lamborghini",
    carPrice:
        'Porsche has announced the name of its Tesla Model S rival, the production-spec Mission E concept. Called the Taycan, the electric sedan is all set to get into production by next year, ahead of its international debut in 2020. The Taycan will be the first electric car by Porsche and it will continue to be a performance-oriented sportscar staying true to the Porsche tradition.',
    carImage: 'assets/images/c2.png',
    carFColor: Colors.amber,
    carSColor: Colors.red,
    carTColor: Colors.blue,
  ),
];
var imagesIndex;

Widget buildAccountUserModelItem(
        CarItemModel image, int index, BuildContext con) =>
    GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Expanded(
          child: Container(
            alignment: AlignmentDirectional.topStart,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 20, end: 20, top: 20),
                  child: Column(
                    children: [
                      Text(
                        'Porsche s First Electric Car Named Taycan; Will Rival Tesla Model S ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("${image.carImage}"),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Column(
                            children: [
                              Text(
                                '${image.carName}',
                                style: TextStyle(
                                    color: Colors.black,
                                    overflow: TextOverflow.ellipsis),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                '${image.carName}',
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          ),
                          Spacer(),
                          // SizedBox(
                          //   width: 157.w,
                          // ),
                          Container(
                            width: 71.w,
                            height: 24.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.green),
                              color: Colors.white,
                            ),
                            child: Row(children: [
                              Icon(
                                Icons.add,
                                size: 20.sp,
                                color: Colors.green,
                              ),
                              Text(
                                'Follow',
                                style: TextStyle(color: Colors.green),
                              )
                            ]),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppTheme.colors.White,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Hot',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                    color: AppTheme.colors.secondryColor),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Latest',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                    color: AppTheme.colors.secondryColorText,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: ListView.builder(
                                padding: EdgeInsets.all(0),
                                shrinkWrap: true,
                                // physics: NeverScrollableScrollPhysics(),
                                itemCount: carsItems.length,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) =>
                                    buildNewsReviewChat(carsItems[index],
                                        imagesIndex = index, context)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
