import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../api/end_points.dart';
import '../../helpers/remote/dio_helper.dart';
import '../../model/home_model.dart';
import '../../utils/components/color.dart';
import '../../widgets/custom_list_view.dart';
import '../views/Authentication/login_Screen.dart';

class BuyCarController extends GetxController {
  var isLoading = true.obs;
  // var cars= List<HomeModel>().obs;

  String? valueChoose;
  List<String> items = [
    "Giulia",
    "GT-R",
    "Elmiraj",
    "RX-V",
  ];

  List<int> myColors = [
    0Xfff00AC5E,
    0XfffF6C604,
    0XfffFF3131,
    // 0Xfff424243,
    // 0Xfff006DEA
  ];
  int indexChoices = 0;
  int index = 0;

  List<String> choices = [
    "Photos",
    "Videos",
  ];
  @override
  void onInit() {
    getAllHomeData();
    super.onInit();
  }

  void changeValueOfIndex(value) {
    index = value;
    print(index);
    update();
  }

  void changeValueOfIndexindexChoices(value) {
    indexChoices = value;
    print(indexChoices);
    update();
  }

  double rotationX = 0.0;
  double rotationY = 0.0;

  void changeValueOfTransform(rotationX, rotationY) {
    this.rotationX += rotationX;
    this.rotationY -= rotationY;
    update();
  }

  HomeModel? homeModel;
  bool loading = true;

  getAllHomeData() {
    try {
      isLoading(true);
      DioHelper.get_data(url: HOME).then((value) async {
        //if (value.statusCode == 200) {
        homeModel = await HomeModel.fromJson(value.data);
        // (json.decode(value.data));
        // cars = homeModel!.data!.cars;
        //   homeModel!.data!.cars!.forEach((element) {
        loading = false;
        // });
        update();
        // }
      });
    } catch (e) {
      isLoading(false);
    }
  }

  Widget buildCarItem(context, index) => GestureDetector(
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
                padding: const EdgeInsetsDirectional.only(start: 15.0, end: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: CachedNetworkImage(
                        imageUrl: '${homeModel?.data?.cars?[index].image}',
                        placeholder: (context, url) => SizedBox(
                          child: Center(
                            child: CircularProgressIndicator(
                              color: AppColor.secondryColor,
                            ),
                          ),
                        ),
                        height: 80.0.h,
                        width: 120.0.w,
                        fit: BoxFit.cover,
                        // width: double.infinity,
                      ),
                      //  Image(
                      //   // image: AssetImage('${product.ProductImage}'),
                      //   image: AssetImage("${carItem.carImage}"),
                      //   height: 80.0.h,
                      //   width: 120.0.w,
                      // ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${homeModel?.data?.cars?[index].name}',
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
                            '${homeModel?.data?.cars?[index].acceleration}',
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
                                        changeValueOfIndex(index);
                                      },
                                      child: CircleAvatar(
                                        radius: 10.h,
                                        backgroundColor: Color(myColors[index]),
                                      )),
                                  index == index
                                      ? CircleAvatar(
                                          radius: 15.h,
                                          backgroundColor:
                                              Color(myColors[index])
                                                  .withOpacity(0.55),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            itemCount: myColors.length,
                          ),
                          Spacer(),
                          Text(
                            '\$${homeModel?.data?.cars?[index].price}',
                            style: TextStyle(
                                fontSize: 10.0.sp,
                                color: Colors.green,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.normal),
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
                  color: Colors.green[100]),
              child: Center(
                  child: Text(
                'Offer',
                style: TextStyle(color: Color(hexColor('##1DB854'))),
              )),
            )),
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_border))
                ],
              ),
            ),
          ],
        ),
      );
}
