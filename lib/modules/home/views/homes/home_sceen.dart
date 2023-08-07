import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_project/model/car_item_model.dart';
import 'package:car_project/modules/home/controllers/home_controller.dart';
import 'package:car_project/modules/home/views/Authentication/login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../shared/style/AppTheme.dart';
import '../../../../widget/customTextFormWithRecord.dart';
import '../../../../widget/custom_list_view.dart';
import '../../../../model/image/image_model.dart';

class HomeScreen extends StatefulWidget {
  // Function function;
  // HomeScreen(this.function);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final pController = PageController(
  viewportFraction: 1,
  keepPage: true,
);

class _HomeScreenState extends State<HomeScreen> {
  // final TextEditingController _textController = TextEditingController();
  // final _pageController = PageController();

  List<String> items = [
    "Giulia",
    "GT-R",
    "Elmiraj",
    "RX-V",
  ];
  String? valueChoose;

  int index = 0;

  void changeValueOfIndex(int value) {
    setState(() {
      index = value;
    });
  }

  List<ImageModel> images = [
    ImageModel(
      id: 1,
      imageType: "Extreme bump test",
      imageName: 'first test! 100km/h extreme bump test',
      imageImage: 'assets/images/cc.png',
    ),
    ImageModel(
      id: 2,
      imageType: "Extreme bump test",
      imageName: 'first test! 100km/h extreme bump test',
      imageImage: 'assets/images/cc.png',
    ),
    ImageModel(
      id: 3,
      imageType: "Extreme bump test",
      imageName: 'first test! 100km/h extreme bump test',
      imageImage: 'assets/images/cc.png',
    ),
  ];

  List networkImage = [
    'https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];

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
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppTheme.colors.primaryColor,
            actions: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 20.0, end: 20),
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
                            style: TextStyle(
                                fontSize: 12.0.sp, color: Colors.grey),
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
                                      fontSize: 12.0, color: Colors.grey),
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
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 168.h,
                        // width: 280.w,
                        clipBehavior: Clip.hardEdge,
                        margin:
                            EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(17.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[400]!, blurRadius: 6),
                            ]),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 168.h,
                              child: Stack(
                                children: [
                                  ScrollConfiguration(
                                    behavior: ScrollBehavior(),
                                    //  MyBehavior(),
                                    child: PageView.builder(
                                      scrollDirection: Axis.horizontal,
                                      pageSnapping: true,
                                      controller: pController,
                                      itemCount: images.length,
                                      itemBuilder: (_, index) {
                                        return SizedBox(
                                          height: double.infinity,
                                          child: ClipRRect(
                                            child: CachedNetworkImage(
                                              imageUrl: networkImage[index],
                                              fit: BoxFit.cover,
                                              placeholder: (context, url) =>
                                                  SpinKitFadingCircle(
                                                color: Colors.black,
                                                size: 50.0,
                                              ),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      Icon(Icons.error),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 8.h),
                                      child: SmoothPageIndicator(
                                        controller: pController,
                                        count: images.length,
                                        effect: ExpandingDotsEffect(
                                            dotHeight: 8.w,
                                            dotWidth: 8.w,
                                            dotColor:
                                                Color(hexColor('#2A3034')),
                                            spacing: 5.w,
                                            activeDotColor:
                                                Color(hexColor('#1DB854'))),
                                        onDotClicked: (index) {
                                          pController.animateToPage(index,
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              curve: Curves.ease);
                                        },
                                      ),
                                    ),
                                  ),
                                  PositionedDirectional(
                                      bottom: 41.h,
                                      start: 21.w,
                                      child: Text(
                                        'Extreme bump test',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.grey),
                                      )),
                                  PositionedDirectional(
                                      bottom: 20.h,
                                      start: 20.w,
                                      child: Text(
                                        'First test! 100km/h extreme bump test',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 20),
                        child: SizedBox(
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
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Container(
                                            height: 30..h,
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
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                    width: 20,
                                  ),
                              itemCount: items.length),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 20.0, end: 20),
                        child: Row(
                          children: [
                            Text(
                              'Top deal',
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
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 20, end: 20),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 240.h,
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
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 20.0, end: 20),
                  child: Row(
                    children: [
                      Text(
                        'Popular brands',
                        style: TextStyle(
                            fontSize: 25.0.sp, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
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
                  padding:
                      const EdgeInsetsDirectional.only(start: 20.0, end: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 102.h,
                          child: ListView.builder(
                              itemCount: carsItems.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  buildCarModelItem(carsItems[index],
                                      imagesIndex = index, context)),
                        ),
                        Row(
                          children: [
                            Text(
                              'Upcoming',
                              style: TextStyle(
                                  fontSize: 25.0.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
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
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 20.0, end: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200.h,
                          child: ListView.builder(
                              itemCount: carsItems.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  buildUpcomingCarItem(carsItems[index],
                                      imagesIndex = index, context)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 20.0, end: 20),
                  child: Row(
                    children: [
                      Text(
                        'News',
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
                  padding:
                      const EdgeInsetsDirectional.only(start: 20.0, end: 20),
                  child: ListView.builder(
                      padding: EdgeInsets.all(0),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: carsItems.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => buildNewsCarItem(
                          carsItems[index], imagesIndex = index, context)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget buildImagesItem(ImageModel image, int index, BuildContext con) =>
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
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              fit: BoxFit.cover,
              // image: AssetImage('${product.ProductImage}'),
              image: AssetImage("${image.imageImage}"),
              width: 335.w,
              height: 168.h,
            ),
          ),
          Positioned(
            child: Center(
              child: Text(
                '${image.imageType}',
                style: TextStyle(
                    color: Colors.grey[300], overflow: TextOverflow.ellipsis),
              ),
            ),
            bottom: 40,
            left: 20,
          ),
          Positioned(
            child: Text(
              '${image.imageName}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold),
            ),
            bottom: 15,
            left: 20,
            right: 20,
          )
        ],
      ),
    );

Widget buildCarModelItem(CarItemModel image, int index, BuildContext con) =>
    GestureDetector(
      child: Container(
        margin: EdgeInsetsDirectional.only(end: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        width: 102.w,
        height: 102.h,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image(
                  // image: AssetImage('${product.ProductImage}'),
                  image: AssetImage("${image.carImage}"),
                  height: 60.0.h,
                  width: 80.0.w,
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
      ),
    );

// GetBuilder<CarDetails1Controller>(
//       init: CarDetails1Controller(),
//       builder: (controller) {

Widget buildCarItem(CarItemModel carItem, int index, BuildContext con) {
  return GetBuilder<HomeController>(
    init: HomeController(),
    builder: (controller) {
      return Container(
        margin: EdgeInsetsDirectional.only(end: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
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
                          overflow: TextOverflow.ellipsis),
                    ),
                    Text(
                      '${carItem.carPrice}',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 12.sp,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomListView(
                    height: 10.h,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: SizedBox(),
                    itemBuilder: (context, index) => Container(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                controller.changeValueOfIndex(index);
                              },
                              child: CircleAvatar(
                                radius: 10.h,
                                backgroundColor:
                                    Color(controller.myColors[index]),
                              )),
                          controller.index == index
                              ? CircleAvatar(
                                  radius: 15.h,
                                  backgroundColor:
                                      Color(controller.myColors[index])
                                          .withOpacity(0.55),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                    itemCount: controller.myColors.length,
                  ),
                  // Container(
                  //   width: 10.0.w,
                  //   height: 10.0.h,
                  //   decoration: BoxDecoration(
                  //       color: carItem.carFColor,
                  //       borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  // ),
                  // SizedBox(
                  //   width: 10.0.w,
                  // ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //       color: carItem.carSColor,
                  //       borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  //   width: 10.0.w,
                  //   height: 10.0.h,
                  // ),
                  // SizedBox(
                  //   width: 10.0.w,
                  // ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //       color: carItem.carTColor,
                  //       borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  //   width: 10.0.w,
                  //   height: 10.0.h,
                  // ),
                  Spacer(),
                  // SizedBox(
                  //   width: 32.0.w,
                  // ),
                  IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.arrow_right_alt,
                        color: Colors.green,
                      ))
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}

Widget buildUpcomingCarItem(
        CarItemModel carItem, int index, BuildContext con) =>
    GestureDetector(
      child: Container(
        margin: EdgeInsetsDirectional.only(end: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
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
        margin: EdgeInsetsDirectional.only(bottom: 13.0),
        decoration: BoxDecoration(
            color: Colors.white,
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
