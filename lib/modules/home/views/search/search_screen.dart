import 'package:car_project/model/car_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/style/AppTheme.dart';
import '../../../../widget/customTextFormWithRecord.dart';
import '../Authentication/login_Screen.dart';

class SearchScreen extends StatefulWidget {
  // Function function;
  // SearchScreen(this.function);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
      carName: "Ahmed",
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
      backgroundColor: AppTheme.colors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppTheme.colors.primaryColor,
        leading: Icon(
          Icons.close,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Row(
            //   children: [
            //     Stack(
            //       alignment: Alignment.center,
            //       children: [
            //         Icon(
            //           Icons.close,
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
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  children: [
                    Text('History'),
                    Spacer(),
                    // SizedBox(
                    //   width: 195.w,
                    // ),
                    Icon(Icons.delete, color: Colors.grey),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Clear history',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    width: 100.w,
                    height: 34.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(hexColor('#FFFFFF'))),
                    child: Center(child: Text('3 Series Gt')),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    width: 100.w,
                    height: 34.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(hexColor('#FFFFFF'))),
                    child: Center(child: Text('Rapide E')),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    width: 100.w,
                    height: 34.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(hexColor('#FFFFFF'))),
                    child: Center(child: Text('3 Series Gt')),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    'Sales',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                        color: Colors.green),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Text('Hot'),
                  Spacer(),
                  // SizedBox(
                  //   width: 90.w,
                  // ),
                  DropdownButton(
                    underline: SizedBox(),
                    // dropdownColor: Colors.green,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                    hint: Text("December 2023: "),
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
                                fontSize: 25.0.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ));
                    }).toList(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                width: double.infinity,
                height: 540.h,
                child: ListView.builder(
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    // physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: carsItems.length,
                    itemBuilder: (context, index) => buildCarItem(
                        carsItems[index], imagesIndex = index, context)),
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
            color: Colors.white,
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
