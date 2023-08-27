import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../model/car_item_model.dart';
import '../../../utils/components/color.dart';import '../../../utils/components/components.dart';
import '../Authentication/login_Screen.dart';
import '../popular_brand_screen.dart';

class CarPriceScreen extends StatefulWidget {
  const CarPriceScreen({super.key});

  @override
  State<CarPriceScreen> createState() => _CarPriceScreenState();
}

class _CarPriceScreenState extends State<CarPriceScreen> {
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

  bool? isChecked = false;
  bool? isChecked2 = false;

  List<CarItemModel> carsItems = [
    CarItemModel(
      id: 1,
      carName: "Lamborghini",
      // carInfo:
      //     'Porsche has announced the name of its Tesla Model S rival, the production-spec Mission E concept. Called the Taycan, the electric sedan is all set to get into production by next year, ahead of its international debut in 2020. The Taycan will be the first electric car by Porsche and it will continue to be a performance-oriented sportscar staying true to the Porsche tradition.',
      carPrice: '50000000000000',
      //     ,
      carImage: 'assets/images/c2.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 2,
      carName: "Lamborghini",
      carPrice: '99999000000',
      //     ,
      carImage: 'assets/images/c2.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 3,
      carName: "Lamborghini",
      carPrice: '211111100000000',
      //     ,
      carImage: 'assets/images/c2.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 4,
      carName: "Lamborghini",
      carPrice: '211111100000000',
      //     ,
      carImage: 'assets/images/ccc.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 5,
      carName: "Lamborghini",
      carPrice: '211111100000000',
      //     ,
      carImage: 'assets/images/ccc.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
    CarItemModel(
      id: 6,
      carName: "Lamborghini",
      carPrice: '211111100000000',
      //     ,
      carImage: 'assets/images/ccc.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var imagesIndex;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  ListView.builder(
                      padding: EdgeInsets.all(0),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: carsItems.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => buildCarPrices(
                          carsItems[index],
                          imagesIndex = index,
                          context,
                          isChecked2)),
                  Text('Recommend for you'),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 336.w,
                    height: 225.h,
                    child: GridView.builder(
                        // shrinkWrap: true,
                        // physics: NeverScrollableScrollPhysics(),
                        physics: BouncingScrollPhysics(),
                        //, بتخلي التطبيق يعمل سكرول غريب
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: carsItems.length,
                        itemBuilder: (context, index) => buildPopularBrandItem(
                            carsItems[index], imagesIndex = index, context)
                            ),
                  )
                  ,
                  Container(
                    width: 335.w,
                    height: 44.0.h,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Get Offers from Dealer',
                          style: TextStyle(color: AppColor.White),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
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
}
