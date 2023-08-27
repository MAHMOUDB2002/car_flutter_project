import 'package:car_project/model/car_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/components/color.dart';
import '../../widgets/customTextFormWithRecord.dart';
import 'Authentication/login_Screen.dart';

class AutoPartsScreen extends StatefulWidget {
  // Function function;
  // HomeScreen(this.function);

  @override
  State<AutoPartsScreen> createState() => _AutoPartsScreenState();
}

final controller = PageController(
  viewportFraction: 1,
  keepPage: true,
);

class _AutoPartsScreenState extends State<AutoPartsScreen> {
  // final TextEditingController _textController = TextEditingController();
  // final _pageController = PageController();

  int index = 0;

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
  ];

  @override
  Widget build(BuildContext context) {
    var imagesIndex;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColor.White,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: AppColor.iconColor,
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 21.0),
                  child: Container(
                    width: 30.w,
                    height: 30.h,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    alignment: Alignment.center,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(
                          Icons.message,
                          size: 10,
                          color: Colors.black,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 10.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '10',
                                  style: TextStyle(
                                    fontSize: 8.0.sp,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
        title: Center(
            child: Text(
          'Auto parts',
          style: TextStyle(
              fontSize: 14.sp, color: AppColor.secondryColorText),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  width: 335.w,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CustomTextFormWithRecord(
                        text: "Search",
                        height: 30.h,
                        borderRadius: 25.r,
                        color: AppColor.primaryColor,
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(12.h),
                        ),
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColor.secondryColorText),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Image.asset(
                          "assets/images/search.png",
                          color: AppColor.iconColor,
                          height: 20.h,
                          width: 20.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    // physics: BouncingScrollPhysics(), بتخلي التطبيق يعمل سكرول غريب
                    scrollDirection: Axis.horizontal,
                    itemCount: carsItems.length,
                    itemBuilder: (context, index) => buildCategoriesItem(
                        carsItems[index], imagesIndex = index, context),
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 33.w,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 20.0, end: 20),
                  child: Row(
                    children: [
                      Text(
                        'For you',
                        style: TextStyle(
                          fontSize: 25.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      // SizedBox(width: 200.w),
                      TextButton(
                        child: Row(children: [
                          Text(
                            'More',
                            style: TextStyle(color: Colors.green),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,
                              color: Colors.green),
                        ]),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 240.h,
                          child: ListView.builder(
                              itemCount: carsItems.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => buildCarItem(
                                  carsItems[index],
                                  imagesIndex = index,
                                  context)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  start: 20.0, end: 20, top: 27),
              child: Row(
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(
                        fontSize: 25.0.sp, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  // SizedBox(width: 240),
                  TextButton(
                    child: Row(children: [
                      Text(
                        'More',
                        style: TextStyle(color: Colors.green),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined,
                          color: Colors.green),
                    ]),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  start: 20.0, end: 20, top: 20),
              child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: carsItems.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => buildPopularCategoryItem(
                      carsItems[index], imagesIndex = index, context)),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildCarItem(CarItemModel carItem, int index, BuildContext con) =>
    Container(
      margin: EdgeInsetsDirectional.only(end: 10.0),
      decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      width: 150.w,
      height: 225.h,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
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
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${carItem.carName}',
                    style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black,
                        overflow: TextOverflow.ellipsis),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '${carItem.carName}',
                    style: TextStyle(
                        fontSize: 10.0.sp,
                        color: AppColor.secondryColorText,
                        overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  '${carItem.carPrice}',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 12.sp,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Spacer(),
                // SizedBox(
                //   width: 32.0.w,
                // ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(bottom: 11, end: 15),
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        ('+'),
                        style: TextStyle(color: AppColor.secondryColor),
                        // icon: Icon(
                        //   Icons.add,
                        //   color: AppColor.secondryColor,
                        // ),
                      ),
                    ),
                  ),
                )
                // CustomButton(
                //   onPressed: () {},
                //   width: 20,
                //   height: 20,
                // )
              ],
            )
          ],
        ),
      ),
    );

Widget buildPopularCategoryItem(
        CarItemModel carItem, int index, BuildContext con) =>
    GestureDetector(
      child: Container(
        margin: EdgeInsetsDirectional.only(bottom: 13.0),
        decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        width: 335.w,
        height: 86.h,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Image(
                alignment: Alignment.centerRight,
                // image: AssetImage('${product.ProductImage}'),
                image: AssetImage("${carItem.carImage}"),
                height: 80.0.h,
                width: 80.0.w,
              ),
              SizedBox(
                width: 15.w,
              ),
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
                      // height: 35.h,
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
                  ),
                  SizedBox(
                      // height: 35.h,
                      ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      '${carItem.carName}',
                      style: TextStyle(
                        color: AppColor.secondryColor,
                        fontSize: 14.sp,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );

Widget buildCategoriesItem(CarItemModel carItem, int index, BuildContext con) =>
    GestureDetector(
        child: Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 54.w,
            height: 54.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(hexColor('#F1F2F3'))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  fit: BoxFit.cover,
                  width: 18,
                  height: 18,
                  image: AssetImage('${carItem.carImage}'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '${carItem.carName}',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
                overflow: TextOverflow.ellipsis),
          )
        ],
      ),
    ));
