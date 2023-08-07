import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../model/car_item_model.dart';
import '../../../modules/home/views/Authentication/login_Screen.dart';
import '../style/AppTheme.dart';

Widget defaultButton(
        // {double width = double.infinity, Color background = Colors.blue})
        {double width = double.infinity,
        Color background = Colors.blue,
        bool isUpperCase = true,
        double radius = 10.0,
        @required Function? function,
        @required String? text}) =>
    Container(
      width: width,
      height: 40.0,
      child: MaterialButton(
        onPressed: function!(),
        child: Text(
          isUpperCase ? text!.toUpperCase() : text!.toLowerCase(),
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
          color: background, borderRadius: BorderRadius.circular(radius)),
    );

Widget defaultFormField(
        {required TextEditingController? controller,
        required TextInputType? type,
        Function? onSubmit,
        Function? onChanged,
        bool isPassword = false,
        required Function validate,
        required String label,
        @required IconData? prefix,
        IconData? suffix,
        Function? suffixPressed}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit!(),
      onChanged: onChanged!(),
      validator: validate!(),
      decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          prefixIcon: Icon(prefix),
          suffixIcon: suffix != null
              ? IconButton(onPressed: () {}, icon: Icon(suffix))
              : null),
    );

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

Widget buildNewsReviewChat(CarItemModel chat, int index, BuildContext con) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("${chat.carImage}"),
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '${chat.carName}',
                      style: TextStyle(
                          fontSize: 14,
                          color: AppTheme.colors.secondryColorText,
                          overflow: TextOverflow.ellipsis),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      '3 hours ago',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[500],
                          overflow: TextOverflow.ellipsis),
                    ),
                    Spacer(),
                    Text(
                      '99',
                      style:
                          TextStyle(color: AppTheme.colors.secondryColorText),
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: 20.sp,
                      color: AppTheme.colors.iconColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  child: Text(
                    'Porsche actually wanted to name this something else,but that name was already taycan',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppTheme.colors.primaryColorText,
                        overflow: TextOverflow.clip),
                    maxLines: 3,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  '17 Reply',
                  style: TextStyle(
                      fontSize: 14,
                      color: AppTheme.colors.secondryColor,
                      overflow: TextOverflow.ellipsis),
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );

Widget buildBrandCarItem(CarItemModel carItem, int index, BuildContext con) =>
    GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        width: 335.w,
        height: 86.h,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Image(
                alignment: Alignment.centerRight,
                // image: AssetImage('${product.ProductImage}'),
                image: AssetImage("${carItem.carImage}"),
                height: 80.0.h,
                width: 120.0.w,
              ),
              SizedBox(
                width: 15.w,
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
                    height: 7.h,
                  ),
                  Text(
                    '${carItem.carName}',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.sp,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    '${carItem.carName}',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 14.sp,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );

Widget buildCompareCarItem(CarItemModel carItem, int index, BuildContext con) =>
    GestureDetector(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            width: 335.w,
            height: 86.h,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    width: 90.w,
                    height: 90.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red),
                    child: Center(
                      child: Image(image: AssetImage('${carItem.carImage}')),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                        height: 7.h,
                      ),
                      Text(
                        '${carItem.carName}',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.sp,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        '${carItem.carName}',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14.sp,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 3,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Divider(
                height: 30.h,
                color: AppTheme.colors.greyColor,
              ),
              Positioned(
                  top: 4,
                  right: 177,
                  left: 177,
                  child: Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppTheme.colors.greyColor),
                    child: Center(child: Text('VS')),
                  ))
            ],
          ),
          // SizedBox(
          //   height: 10.h,
          // )
        ],
      ),
    );

Widget buildNewsCarItem(CarItemModel carItem, int index, BuildContext con) =>
    GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            color: Color(hexColor('##F1F2F3')),
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
                    height: 30.h,
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
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image(
                  alignment: Alignment.centerRight,
                  // image: AssetImage('${product.ProductImage}'),
                  image: AssetImage("${carItem.carImage}"),
                  height: 66.0.h,
                  width: 66.0.w,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );

Widget buildCarPrices(
        CarItemModel carItem, int index, BuildContext con, bool? isChecked) =>
    GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
            color: Color(hexColor('##F1F2F3')),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        width: 335.w,
        height: 100.h,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    '${carItem.carName}',
                    style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.black,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    '${carItem.carPrice}',
                    style: TextStyle(
                        fontSize: 14.0.sp,
                        color: AppTheme.colors.secondryColor,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Text(
                    '${carItem.carPrice}',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.sp,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Compare',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.sp,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Checkbox(
                      value: isChecked,
                      onChanged: (newBool) {
                        isChecked = newBool;
                      })
                ],
              ),
              Divider()
            ],
          ),
        ),
      ),
    );

Widget circleImage(image) => ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image(
        image: AssetImage(image),
        height: 190.h,
        width: 335.w,
        fit: BoxFit.cover,
      ),
    );
