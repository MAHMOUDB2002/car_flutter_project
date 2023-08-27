import 'package:car_project/model/car_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/components/color.dart';
import '../../../widgets/customTextFormWithRecord.dart';
import '../Authentication/login_Screen.dart';

class SearchBrandScreen extends StatefulWidget {
  // Function function;
  // SearchBrandScreen(this.function);

  @override
  State<SearchBrandScreen> createState() => _SearchBrandScreenState();
}

class _SearchBrandScreenState extends State<SearchBrandScreen> {
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
        backgroundColor: AppColor.primaryColor,
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
                color: AppColor.White,
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
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
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
            //       height: 60.h,
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
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    width: 60.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Center(
                      child: Image(image: AssetImage('assets/images/car.png')),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Mazda'),
                      TextButton(
                        child: Row(children: [
                          Text(
                            'Brand introduction',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ]),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('16',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Avaliable',
                        style: TextStyle(color: Colors.grey),
                      )
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                        Spacer(),

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
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 180.h,
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'News',
                          style: TextStyle(
                              fontSize: 25.0.sp, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        // SizedBox(width: 240.w),
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
                  SizedBox(
                    height: 196.h,
                    child: ListView.builder(
                        padding: EdgeInsets.all(0),
                        shrinkWrap: true,
                        // physics: NeverScrollableScrollPhysics(),
                        itemCount: carsItems.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => buildNewsCarItem(
                            carsItems[index],
                            imagesIndex = index,
                            context)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Videos',
                          style: TextStyle(
                              fontSize: 25.0.sp, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),

                        // SizedBox(width: 225.w),
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
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 170.h,
                          child: ListView.builder(
                              itemCount: carsItems.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => buildImageItem(
                                  carsItems[index],
                                  imagesIndex = index,
                                  context)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
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
            color: Color(hexColor('#F1F2F3')),
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
Widget buildNewsCarItem(CarItemModel carItem, int index, BuildContext con) =>
    GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            color: Color(hexColor('#F1F2F3')),
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
