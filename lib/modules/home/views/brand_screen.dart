import 'package:car_project/widget/custom_text2.dart';
import 'package:car_project/model/car_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../shared/style/AppTheme.dart';
import '../../../shared/components/components.dart';
import 'Authentication/login_Screen.dart';

class BrandScreen extends StatefulWidget {
  // Function function;
  // SearchBrandScreen(this.function);

  @override
  State<BrandScreen> createState() => _BrandScreenState();
}

class _BrandScreenState extends State<BrandScreen> {
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
      backgroundColor: Color(hexColor('#F1F2F3')),
      appBar: AppBar(
        backgroundColor: AppTheme.colors.primaryColor,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        title: Center(
            child: CustomText(
          text: 'Porcshe',
          style:
              TextStyle(color: AppTheme.colors.secondryColorText, fontSize: 14),
        )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsetsDirectional.only(top: 20, start: 20, end: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hot',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 180.h,
                      child: ListView.builder(
                          itemCount: carsItems.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => buildSearchBrandItem(
                              carsItems[index], imagesIndex = index, context)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Hot',
                    style: TextStyle(
                        fontSize: 14.0.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Sedan',
                    style: TextStyle(
                        fontSize: 14.0.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'SUV',
                    style: TextStyle(
                        fontSize: 14.0.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'Luxury',
                    style: TextStyle(
                        fontSize: 14.0.sp, fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(width: 130.w),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 405.h,
                child: ListView.builder(
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: carsItems.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => buildBrandCarItem(
                        carsItems[index], imagesIndex = index, context)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCarItem(CarItemModel carItem, int index, BuildContext con) =>
    GestureDetector(
      // onTap: () {
      //   Navigator.push(
      //       con,
      //       MaterialPageRoute(
      //         builder: (context) => DetailsScreen1(
      //           productM: product,
      //         ),
      //       ));
      // },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0),
        decoration: BoxDecoration(
            color: Color(hexColor('#F1F2F3')),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        width: 335.w,
        height: 60.h,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('1.'),
              Expanded(
                flex: 1,
                child: Image(
                  // image: AssetImage('${product.ProductImage}'),
                  image: AssetImage("${carItem.carImage}"),
                  height: 80.0.h,
                  width: 120.0.w,
                ),
              ),
              SizedBox(
                width: 10.0.w,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        color: Colors.grey,
                        fontSize: 10.sp,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${carItem.carPrice}',
                      style: TextStyle(
                          fontSize: 14.0.sp,
                          color: Colors.green,
                          overflow: TextOverflow.ellipsis),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Sell',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.sp,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
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
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        width: 150.w,
        height: 180.h,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 5),
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

Widget buildImageItem(CarItemModel imageItem, int index, BuildContext con) =>
    GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 150.w,
            height: 100.h,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            child: Image(
              image: AssetImage('${imageItem.carImage}'),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            '${imageItem.carName}',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.sp,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
