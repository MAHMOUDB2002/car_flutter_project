import 'package:car_project/model/car_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/style/AppTheme.dart';
import '../../../shared/components/components.dart';
import '../../../widget/customTextFormWithRecord.dart';

class VideoDetailsReviewScreen extends StatefulWidget {
  // Function function;
  // CommunityScreen(this.function);

  @override
  State<VideoDetailsReviewScreen> createState() =>
      VideoDetailsReviewScreenState();
}

class VideoDetailsReviewScreenState extends State<VideoDetailsReviewScreen> {
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
      carPrice:
          'Porsche has announced the name of its Tesla Model S rival, the production-spec Mission E concept. Called the Taycan, the electric sedan is all set to get into production by next year, ahead of its international debut in 2020. The Taycan will be the first electric car by Porsche and it will continue to be a performance-oriented sportscar staying true to the Porsche tradition.',
      carImage: 'assets/images/c2.png',
      carFColor: Colors.amber,
      carSColor: Colors.red,
      carTColor: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var imagesIndex;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppTheme.colors.primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        actions: [
          Container(
            width: 30.w,
            height: 30.h,
            padding: EdgeInsets.all(8),
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            alignment: Alignment.center,
            child: Icon(
              size: 17,
              Icons.share,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: buildAccountUserModelItem(
          carsItems[index], imagesIndex = index, context),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70.0.h,
        decoration: BoxDecoration(
            color: AppTheme.colors.primaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
          child: SizedBox(
            width: 335.w,
            height: 30.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomTextFormWithRecord(
                  text: "Say something…",
                  height: 30.h,
                  borderRadius: 25.r,
                  color: AppTheme.colors.White,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12.h),
                  ),
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.colors.secondryColorText),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Icon(
                      Icons.comment_outlined,
                      color: Colors.grey,
                    )),
              ],
            ),
          ),
        ),
        // Spacer(),
        // SizedBox(
        //   width: 116.w,
        // ),
      ),
    );
  }
}

List<CarItemModel> carsItems = [
  CarItemModel(
    id: 1,
    carName: "Lamborghini",
    carPrice:
        'Porsche has announced the name of its Tesla Model S rival, the production-spec Mission E concept. Called the Taycan, the electric sedan is all set to get into production by next year, ahead of its international debut in 2020. The Taycan will be the first electric car by Porsche and it will continue to be a performance-oriented sportscar staying true to the Porsche tradition.',
    carImage: 'assets/images/c2.png',
    carFColor: Colors.amber,
    carSColor: Colors.red,
    carTColor: Colors.blue,
  ),
  CarItemModel(
    id: 1,
    carName: "Lamborghini",
    carPrice:
        'Porsche has announced the name of its Tesla Model S rival, the production-spec Mission E concept. Called the Taycan, the electric sedan is all set to get into production by next year, ahead of its international debut in 2020. The Taycan will be the first electric car by Porsche and it will continue to be a performance-oriented sportscar staying true to the Porsche tradition.',
    carImage: 'assets/images/c2.png',
    carFColor: Colors.amber,
    carSColor: Colors.red,
    carTColor: Colors.blue,
  ),
];
var imagesIndex;

Widget buildAccountUserModelItem(
        CarItemModel image, int index, BuildContext con) =>
    GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Container(
          alignment: AlignmentDirectional.topStart,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        // borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: AssetImage('assets/images/c2.png'),
                          height: 254.h,
                          width: 375.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        start: 20, end: 20, top: 20),
                    child: Column(
                      children: [
                        Text(
                          '2019 Macan Facelift Launched; More Affordable Than Before ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: AppTheme.colors.White,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Reviews',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: AppTheme.colors.secondryColorText,
                                )),
                            Spacer(),
                            Icon(
                              Icons.close,
                              color: AppTheme.colors.iconColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ListView.builder(
                              padding: EdgeInsets.all(0),
                              shrinkWrap: true,
                              // physics: NeverScrollableScrollPhysics(),
                              itemCount: carsItems.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) =>
                                  buildNewsReviewChat(carsItems[index],
                                      imagesIndex = index, context)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
