import 'package:car_project/modules/home/views/login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/car_item_model.dart';

class PopularBrandScreen extends StatelessWidget {
  // Function function;
  // PopularBrandScreen(this.function);
  final TextEditingController _textController = TextEditingController();
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
      id: 6,
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carImage: 'assets/images/car.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 7,
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
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carImage: 'assets/images/car.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 5,
      carName: "fkfgkfgkf",
      carPrice: '\$67.600',
      carImage: 'assets/images/car.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 5,
      carName: "dkfokerkerkoer",
      carPrice: '\$600',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 10.0, end: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 140.w,
                        ),
                        Text(
                          'Brands',
                          style: TextStyle(fontSize: 14.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 5.0),
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
                          itemCount: carsItems.length,
                          itemBuilder: (context, index) =>
                              buildPopularBrandItem(carsItems[index],
                                  imagesIndex = index, context)),
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
                        'A',
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
                      itemCount: carsItems.length,
                      itemBuilder: (context, index) =>
                          buildFilterPopularBrandItem(
                              carsItems[index], imagesIndex = index, context)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildPopularBrandItem(
        CarItemModel carItem, int index, BuildContext con) =>
    GestureDetector(
        child: Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 75.w,
            height: 75.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(hexColor('#F1F2F3'))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  width: 61,
                  height: 45,
                  image: AssetImage('${carItem.carImage}'),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${carItem.carName}',
                  style: TextStyle(color: Colors.black, fontSize: 8),
                )
              ],
            ),
          ),
        ],
      ),
    ));

Widget buildFilterPopularBrandItem(
        CarItemModel carItem, int index, BuildContext con) =>
    GestureDetector(
      onTap: () {
        //   Navigator.push(
        //       con,
        //       MaterialPageRoute(
        //         builder: (context) => DetailsScreen1(
        //           productM: product,
        //         ),
        //       ));
      },
      child: Container(
        width: 375.w,
        height: 50.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              width: 25.w,
              height: 25.h,
              image: AssetImage('${carItem.carImage}'),
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              '${carItem.carName}',
              style: TextStyle(color: Colors.black, fontSize: 16.sp),
            )
          ],
        ),
      ),
    );
