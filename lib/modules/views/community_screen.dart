import 'package:car_project/model/car_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/components/color.dart';
import '../../widgets/customTextFormWithRecord.dart';
import '../../widgets/custom_svg_image.dart';

class CommunityScreen extends StatefulWidget {
  // Function function;
  // CommunityScreen(this.function);

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
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
    CarItemModel(
      id: 5,
      carName: "Ahmed",
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
                children: [
                  SizedBox(
                    width: 284.w,
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
                    padding: const EdgeInsetsDirectional.only(
                      start: 21.0,
                    ),
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      alignment: Alignment.center,
                      child: Icon(
                        size: 17,
                        Icons.add,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 102.h,
                    child: ListView.separated(
                      itemCount: carsItems.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildCarModelItem(
                          carsItems[index], imagesIndex = index, context),
                      separatorBuilder: (BuildContext context, int index) =>
                          buildCarModelItem(
                              carsItems[index], imagesIndex = index, context),
                    ),
                  ),
                  Row(
                    children: [
                      DropdownButton(
                        underline: SizedBox(),
                        // dropdownColor: Colors.green,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.green,
                        ),
                        hint: Text(
                          "Recommend",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp),
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
                                style: TextStyle(
                                    fontSize: 12.0.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ));
                        }).toList(),
                      ),
                    ],
                  ),
                ],
              ),
              ListView.builder(
                  padding: EdgeInsets.all(0),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: carsItems.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => buildAccountUserModelItem(
                      carsItems[index], imagesIndex = index, context)),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCarModelItem(CarItemModel image, int index, BuildContext con) =>
    GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: CircleAvatar(
                backgroundImage: AssetImage("${image.carImage}"),
                // image: AssetImage('${product.ProductImage}'),
              ),
            ),
            Text(
              '${image.carName}',
              style: TextStyle(
                  color: Colors.grey[500], overflow: TextOverflow.ellipsis),
            ),
          ],
        ),
      ),
    );

Widget buildAccountUserModelItem(
        CarItemModel image, int index, BuildContext con) =>
    GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Container(
          alignment: AlignmentDirectional.topStart,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("${image.carImage}"),
                      // image: AssetImage('${product.ProductImage}'),
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
                          height: 3.h,
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
                        color: Colors.white,
                      ),
                      child: Row(children: [
                        Icon(
                          Icons.add,
                          size: 20,
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
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Text('${image.carName}'),
              Image(
                image: AssetImage('${image.carImage}'),
                height: 188.h,
                width: 335.w,
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Row(
                children: [
                  Text('5 days ago'),
                  Spacer(),
                  // SizedBox(
                  //   width: 116.w,
                  // ),
                  Icon(Icons.add_circle_outline_rounded),
                  SizedBox(
                    width: 5.0.w,
                  ),
                  Text('34'),
                  SizedBox(
                    width: 15.0.w,
                  ),
                  Icon(Icons.comment),
                  SizedBox(
                    width: 5.0.w,
                  ),
                  Text('20'),
                  SizedBox(
                    width: 15.0.w,
                  ),
                  Icon(Icons.favorite),
                  SizedBox(
                    width: 5.0.w,
                  ),
                  Text('68'),
                  SizedBox(
                    width: 15.0.w,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
