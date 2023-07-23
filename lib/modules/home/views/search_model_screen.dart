import 'package:car_project/data/car_item_model.dart';
import 'package:car_project/modules/home/views/login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/shared/style/AppTheme.dart';
import '../../../app/shared/style/color.dart';
import '../../../common_widget/customTextFormWithRecord.dart';

class SearchModelScreen extends StatefulWidget {
  // Function function;
  // SearchModelScreen(this.function);

  @override
  State<SearchModelScreen> createState() => _SearchModelScreenState();
}

class _SearchModelScreenState extends State<SearchModelScreen> {
  final TextEditingController _textController = TextEditingController();

  String? valueChoose;
  List items = [
    "2022",
    "2023",
    "2020",
    "2021",
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
      carImage: 'assets/images/ch.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 2,
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carImage: 'assets/images/ch.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 3,
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carImage: 'assets/images/ch.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 4,
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carImage: 'assets/images/ch.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 5,
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carImage: 'assets/images/ch.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 5,
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carImage: 'assets/images/ps5.png',
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
        backgroundColor: AppTheme.colors.primaryColor,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        title: SizedBox(
          width: 285.w,
          child: Stack(
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
                    color: AppTheme.colors.secondryColorText),
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
      ),
      backgroundColor: Color(hexColor('#F1F2F3')),
      body: Stack(
        children: [
          // Row(
          //   children: [
          //     Stack(
          //       alignment: Alignment.center,
          //       children: [
          //         Icon(
          //           Icons.arrow_back,
          //           size: 30,
          //           color: Colors.grey,
          //         ),
          //       ],
          //     ),
          //     SizedBox(
          //       width: 5.0.w,
          //     ),
          //     Container(
          //       width: 340.w,
          //       height: 60.w,
          //       padding: EdgeInsets.all(10.0),
          //       child: Center(
          //         child: CupertinoSearchTextField(
          //           backgroundColor: Colors.white,
          //           borderRadius: BorderRadius.circular(30),
          //           controller: _textController,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 90.w,
                        height: 90.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Center(
                          child:
                              Image(image: AssetImage('assets/images/car.png')),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                'lexiues LC',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 130.0.w,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.grey,
                                size: 15,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0.h,
                          ),
                          Text(
                            'Lexus/Luxury/The 2.3L EcoBoost',
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10.0.h,
                          ),
                          Text(
                            '\$456,800-\$486,800',
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.green),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(hexColor('#FFfFFF')),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 101.w,
                                height: 68.h,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Stack(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('assets/images/car.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      child: Center(
                                          child: Container(
                                        width: 43.w,
                                        height: 16.h,
                                        decoration: BoxDecoration(
                                            color: Color(hexColor('#000000')),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            'Exterior',
                                            style: TextStyle(
                                                color: Colors.amber,
                                                fontSize: 8.sp),
                                          ),
                                        ),
                                      )),
                                      bottom: 6,
                                      left: 29,
                                      right: 29,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Container(
                                width: 101.w,
                                height: 68.h,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Stack(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('assets/images/car.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      child: Center(
                                          child: Container(
                                        width: 43.w,
                                        height: 16.h,
                                        decoration: BoxDecoration(
                                            color: Color(hexColor('#000000')),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            'Exterior',
                                            style: TextStyle(
                                                color: Colors.amber,
                                                fontSize: 8.sp),
                                          ),
                                        ),
                                      )),
                                      bottom: 6,
                                      left: 29,
                                      right: 29,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Container(
                                width: 101.w,
                                height: 68.h,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Stack(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('assets/images/car.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      child: Center(
                                          child: Container(
                                        width: 43.w,
                                        height: 16.h,
                                        decoration: BoxDecoration(
                                            color: Color(hexColor('#000000')),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            'Exterior',
                                            style: TextStyle(
                                                color: Colors.amber,
                                                fontSize: 8.sp),
                                          ),
                                        ),
                                      )),
                                      bottom: 6,
                                      left: 29,
                                      right: 29,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Lexus LC price list',
                                style: TextStyle(
                                    fontSize: 20.0.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              // SizedBox(width: 119.w),
                              TextButton(
                                child: Row(children: [
                                  Text(
                                    'All',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                ]),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 196.h,
                                child: ListView.builder(
                                    padding: EdgeInsets.all(0),
                                    shrinkWrap: true,
                                    // physics:
                                    //     NeverScrollableScrollPhysics(),
                                    itemCount: carsItems.length,
                                    scrollDirection: Axis.vertical,
                                    itemBuilder: (context, index) =>
                                        buildCarPriceItem(carsItems[index],
                                            imagesIndex = index, context)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Row(
                            children: [
                              Text(
                                'News',
                                style: TextStyle(
                                    fontSize: 25.0.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              // SizedBox(width: 218.w),
                              TextButton(
                                child: Row(children: [
                                  Text(
                                    'More',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                ]),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 190.h,
                                child: ListView.builder(
                                    padding: EdgeInsets.all(0),
                                    shrinkWrap: true,
                                    // physics: NeverScrollableScrollPhysics(),
                                    itemCount: carsItems.length,
                                    scrollDirection: Axis.vertical,
                                    itemBuilder: (context, index) =>
                                        buildNewsCarItem(carsItems[index],
                                            imagesIndex = index, context)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Row(
                            children: [
                              Text(
                                'Videos',
                                style: TextStyle(
                                    fontSize: 25.0.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              // SizedBox(width: 204.w),
                              TextButton(
                                child: Row(children: [
                                  Text(
                                    'More',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                ]),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 200.h,
                                child: ListView.builder(
                                    itemCount: carsItems.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) =>
                                        buildCarItem(carsItems[index],
                                            imagesIndex = index, context)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Row(
                            children: [
                              Text(
                                'Similar cars',
                                style: TextStyle(
                                    fontSize: 25.0.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 200.h,
                                child: ListView.builder(
                                    itemCount: carsItems.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) =>
                                        buildSearchBrandItem(carsItems[index],
                                            imagesIndex = index, context)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildCarPriceItem(CarItemModel carItem, int index, BuildContext con) =>
    GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        width: 335.w,
        height: 60.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        '${carItem.carName}',
                        style: TextStyle(
                            fontSize: 14.0.sp,
                            color: Colors.black,
                            overflow: TextOverflow.ellipsis),
                      ),
                      SizedBox(
                        width: 200.w,
                      ),
                      Text(
                        '${carItem.carPrice}',
                        style: TextStyle(
                            fontSize: 14.0.sp,
                            color: Colors.green,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '${carItem.carName}',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.sp,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Divider(
                    color: Color(hexColor('#8E8E93')),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

Widget buildCarItem(CarItemModel carItem, int index, BuildContext con) =>
    GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        width: 150.w,
        height: 125.h,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Image(
                  // image: AssetImage('${product.ProductImage}'),
                  image: AssetImage("${carItem.carImage}"),
                  height: 80.0.h,
                  width: 120.0.w,
                ),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Text(
                '${carItem.carName}',
                style: TextStyle(
                    fontSize: 14.0.sp,
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        ),
      ),
    );

Widget buildSearchBrandItem(
        CarItemModel carItem, int index, BuildContext con) =>
    GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            color: Color(hexColor('#F1F2F3')),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        width: 150.w,
        height: 200.h,
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_border))
                ],
              ),
              Expanded(
                flex: 2,
                child: Image(
                  // image: AssetImage('${product.ProductImage}'),
                  image: AssetImage("${carItem.carImage}"),
                  height: 80.0.h,
                  width: 120.0.w,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${carItem.carName}',
                    style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    '${carItem.carPrice}-${carItem.carPrice}',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 12.sp,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 7.0.h,
              ),
              Text(
                '${carItem.carName}',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10.sp,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
      ),
    );
Widget buildNewsCarItem(CarItemModel carItem, int index, BuildContext con) =>
    GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            color: Color(hexColor('##F1F2F3')),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        width: 335.w,
        height: 86.h,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      '${carItem.carName}',
                      style: TextStyle(
                          fontSize: 14.0.sp,
                          color: Colors.black,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      '${carItem.carName}',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.sp,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                flex: 1,
                child: Image(
                  alignment: Alignment.centerRight,
                  // image: AssetImage('${product.ProductImage}'),
                  image: AssetImage("${carItem.carImage}"),
                  height: 66.0.h,
                  width: 66.0.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
