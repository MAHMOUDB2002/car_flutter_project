import 'package:car_project/data/car_item_model.dart';
import 'package:car_project/modules/home/views/login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/shared/style/AppTheme.dart';
import '../../../common_widget/customTextFormWithRecord.dart';

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
        backgroundColor: AppTheme.colors.primaryColor,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 75.w,
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
                          color: AppTheme.colors.White,
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(12.h),
                          ),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.0.h,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                changeValueOfIndex(index);
                              },
                              child: Stack(
                                alignment: Alignment.topLeft,
                                clipBehavior: Clip.none,
                                children: [
                                  this.index == index
                                      ? const Positioned(
                                          top: 1,
                                          child: CircleAvatar(
                                            radius: 3,
                                            backgroundColor: Colors.red,
                                          ))
                                      : Container(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 30.h,
                                      width: 85.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.ice_skating_outlined,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text(
                                            items[index],
                                            style: const TextStyle(
                                                color: Colors.black),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 20,
                            ),
                        itemCount: items.length),
                  ),
                  SizedBox(
                    height: 15.h,
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
                        physics: NeverScrollableScrollPhysics(),
                        // physics: NeverScrollableScrollPhysics(),
                        // physics: BouncingScrollPhysics(), بتخلي التطبيق يعمل سكرول غريب
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 250,
                            // childAspectRatio: 1,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        scrollDirection: Axis.vertical,
                        itemCount: carsItems.length,
                        itemBuilder: (context, index) => buildCarItem(
                            carsItems[index], imagesIndex = index, context)),
                  )

                  //    ListView.builder(
                  //       itemCount: products.length,
                  //       scrollDirection: Axis.horizontal,
                  // )
                ],
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
      child: Stack(
        children: [
          Container(
            // margin: EdgeInsets.symmetric(vertical: 5.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            width: 160.w,
            height: 225.h,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
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
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis),
                        ),
                        SizedBox(
                          height: 5.0.h,
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
                    child: Row(
                      children: [
                        Container(
                          width: 10.0.w,
                          height: 10.0.h,
                          decoration: BoxDecoration(
                              color: carItem.carFColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        ),
                        SizedBox(
                          width: 10.0.w,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: carItem.carSColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          width: 10.0.w,
                          height: 10.0.h,
                        ),
                        SizedBox(
                          width: 10.0.w,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: carItem.carTColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          width: 10.0.w,
                          height: 10.0.h,
                        ),
                        Spacer(),
                        // SizedBox(
                        //   width: 32.0.w,
                        // ),
                        Text(
                          '${carItem.carPrice}',
                          style: TextStyle(
                              fontSize: 14.0.sp,
                              color: Colors.green,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              child: Container(
            width: 46.w,
            height: 23.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Color(hexColor('#1DB854'))),
            child: Center(child: Text('Offer')),
          ))
        ],
      ),
    );
