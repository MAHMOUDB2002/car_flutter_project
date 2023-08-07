import 'package:car_project/model/car_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/style/AppTheme.dart';
import '../../../shared/components/components.dart';
import '../../../widget/customTextFormWithRecord.dart';

class NewsDetailsScreen extends StatefulWidget {
  // Function function;
  // CommunityScreen(this.function);

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
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
      backgroundColor: AppTheme.colors.White,
      appBar: AppBar(
          backgroundColor: AppTheme.colors.White,
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
          title: Center(
            child: Text(
              'News',
              style: TextStyle(color: AppTheme.colors.grey6, fontSize: 14),
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsetsDirectional.only(start: 20, end: 20, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Porsche s First Electric Car Named Taycan; Will Rival Tesla Model S ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              buildAccountUserModelItem(
                  carsItems[index], imagesIndex = index, context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70.0.h,
        decoration: BoxDecoration(
            color: AppTheme.colors.primaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 5, start: 10, end: 10),
          child: Row(
            children: [
              SizedBox(
                width: 215.w,
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
              Spacer(),
              Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.comment_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 2.0.h,
                      ),
                      Text('34', style: TextStyle(fontSize: 8)),
                    ],
                  ),
                  SizedBox(
                    width: 15.0.w,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 2.0.h,
                      ),
                      Text(
                        '34',
                        style: TextStyle(fontSize: 8),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15.0.w,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star_border,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 2.0.h,
                      ),
                      Text('34', style: TextStyle(fontSize: 8)),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
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
        padding: const EdgeInsets.only(top: 50.0),
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
                          height: 10.h,
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
                        border: Border.all(color: Colors.green),
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
                height: 20.0.h,
              ),
              Text(
                '${image.carPrice}',
                style: TextStyle(
                    fontSize: 12, color: AppTheme.colors.secondryColorText),
              ),
              SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage('${image.carImage}'),
                  height: 190.h,
                  width: 335.w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppTheme.colors.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                width: 335.w,
                height: 60.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image(
                        // image: AssetImage('${product.ProductImage}'),
                        image: AssetImage("${image.carImage}"),
                        height: 50.0.h,
                        width: 75.0.w,
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
                            '${image.carName}',
                            style: TextStyle(
                                fontSize: 14.0.sp,
                                color: Colors.black,
                                overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            '${image.carName}',
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
                            '${image.carPrice}',
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
              SizedBox(
                height: 15,
              ),
              Text(
                'Porsche says that the name Taycan roughly translates to “lively young horse”, paying homage to the leaping horse that has been featured on the brand’s crest logo since 1952.12',
                style: TextStyle(
                    fontSize: 12, color: AppTheme.colors.secondryColorText),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.colors.primaryColor,
                ),
                width: 210,
                // width: 165,
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Rate this news',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppTheme.colors.secondryColorText),
                    ),
                    RatingBar.builder(
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                      itemSize: 20,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                      allowHalfRating: true,
                      direction: Axis.horizontal,
                      minRating: 1,
                      initialRating: 0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Related',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppTheme.colors.primaryColorText),
              ),
              SizedBox(
                height: 20,
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
                        carsItems[index], imagesIndex = index, context)),
              )
            ],
          ),
        ),
      ),
    );
