import 'package:countries_utils/countries_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../shared/style/AppTheme.dart';
import '../../../widget/custom_text2.dart';
import '../../../model/image/car_details.dart';

class CarDetailsController extends GetxController {
  //TODO: Implement CarDetailsController
  bool isChecked = false;
  final TextEditingController dropdownController = TextEditingController();
  bool showBottonSheetCity = false;

  changValueBottonSheetCity(bool value) {
    showBottonSheetCity = value;
    print(showBottonSheetCity);
    update();
  }

  List<String> choices = ["Price", "Reviews", "FAQ"];
  List<String> choicesPhoto = ["Photos", "Videos"];

  String? nameOfCountry;
  var dropDownValue =
      "City"; // add one value as the defaul one which must exists in the dropdown value
  changeValueOfDropDownValue(value) {
    dropDownValue = value;
    print(value);
    update();
  }

  changeNameOfCountry(value) {
    nameOfCountry = value;
    update();
  }

  bool valueOffers = false;

  changeValueOfOffers(bool value) {
    valueOffers = value;
    update();
  }

  int index = 0;
  double rotationX = 0.0;
  double rotationY = 0.0;

  void changeValueOfTransform(rotationX, rotationY) {
    this.rotationX += rotationX;
    this.rotationY -= rotationY;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    countriesList();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  List<CarDetailsModel> item = [
    CarDetailsModel(
      id: 1,
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carImage: 'assets/images/power.svg',
      carInfo: '3995 CC',
      carInfo2: 'Engine Power',
    ),
    CarDetailsModel(
      id: 2,
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carInfo: '3995 CC',
      carInfo2: 'Engine Power',
      carImage: 'assets/images/settings.svg',
    ),
    CarDetailsModel(
      id: 3,
      carName: "Lamborghini",
      carPrice: '\$67.600',
      carInfo: '3995 CC',
      carInfo2: 'Engine Power',
      carImage: 'assets/images/speed.svg',
    ),
  ];

  Widget buildFirstItemList(context, index) => Stack(
        children: [
          Container(
            width: 48.w,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://hips.hearstapps.com/hmg-prod/images/2023-mclaren-artura-101-1655218102.jpg?crop=1.00xw:0.847xh;0,0.153xh&resize=1200:*"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(5.r)),
          ),
          Container(
            width: 48.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: Theme.of(context)
                    .colorScheme
                    .copyWith(
                        primary:
                            AppTheme.colors.secondryColorText.withOpacity(0.3))
                    .primary),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "+200",
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        fontWeight: FontWeight.w400,
                        fontSize: 8.sp,
                      ),
                ),
                CustomText(
                  text: "Images",
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.w400,
                        fontSize: 8.sp,
                      ),
                )
              ],
            ),
          ),
        ],
      );

  changeValueOfCheckBox(bool value) {
    isChecked = value;
    if (isChecked = true) {
      Get.offNamed("/compareCarsView");
    }
    update();
  }

  changeValueOfIndex(int value) {
    index = value;
    update();
  }

  Widget bulidSecondItemList(context, index) => Container(
        width: 100.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: AppTheme.colors.White
            //Theme.of(context).colorScheme.primary,
            ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "${item[index].carImage}",
                height: 30.h,
                width: 30.w,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomText(
                text: "${item[index].carInfo}",
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: Colors.black,
                      //  Theme.of(context).colorScheme.onBackground,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomText(
                text: "${item[index].carInfo2}",
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                    ),
              ),
            ],
          ),
        ),
      );

  Widget bulidTwoItemList(context, index) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
              text: choicesPhoto[index],
              onTap: () {
                changeValueOfIndex(index);
              },
              style: this.index == index
                  ? Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.primaryVariant,
                      )
                  : Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.secondary,
                      )),
          this.index == index
              ? Container(
                  width: 20.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primaryVariant,
                  ),
                )
              : Container(),
        ],
      );

  Widget bulidThreedItemList(context, index) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
              text: choices[index],
              onTap: () {
                changeValueOfIndex(index);
              },
              style: this.index == index
                  ? Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.primaryVariant,
                      )
                  : Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.secondary,
                      )),
          this.index == index
              ? Container(
                  width: 20.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primaryVariant,
                  ),
                )
              : Container(),
        ],
      );

  Widget bulidFourItemList(context, index) => Container(
        child: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Row(
              children: [
                CustomText(
                  text: "500h Luxury",
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: CustomText(
                    text: "\$456,800",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 14.sp,
                          color: Theme.of(context).colorScheme.primaryVariant,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
              ],
            ),
            subtitle: Row(
              children: [
                CustomText(
                  text: "3456 cc,Automatic,Petrol,15.4kmpl",
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                const Spacer(),
                CustomText(
                  text: "Compare",
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Checkbox(
                  activeColor: Theme.of(context).colorScheme.primaryVariant,
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.secondary,
                    style: BorderStyle.solid,
                    strokeAlign: -3.h,
                  ),
                  value: isChecked,
                  onChanged: (bool? value) {
                    changeValueOfCheckBox(value!);
                  },
                ),
              ],
            ),
          ),
        ),
      );

  Widget bulidFiveItemList(context, index) => Container(
        height: 157.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 0.h, left: 10.w, right: 10.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/question.svg",
                    height: 15.h,
                    width: 15.w,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomText(
                      textAlign: TextAlign.start,
                      text:
                          "How much price we have to pay for buying Porsche 718",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/answer.svg",
                    height: 15.h,
                    width: 15.w,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: CustomText(
                      text:
                          "Yes, Boxster PDK, Boxster S PDK, Cayman S PDK and Cayman PDK are the variants available with Automatic ",
                      maxLines: 4,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/like.svg",
                    height: 15.h,
                    color: Theme.of(context).colorScheme.primaryVariant,
                    width: 15.w,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText(
                    text: "Helpful (8)",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Theme.of(context).colorScheme.primaryVariant,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                  ),
                  const Spacer(),
                  CustomText(
                    text: "2 answer",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Theme.of(context).colorScheme.primaryVariant,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    size: 20.h,
                    color: Theme.of(context).colorScheme.primaryVariant,
                  )
                ],
              ),
            ],
          ),
        ),
      );
  List<String> countriesName = [];
  List<Country> countries = Countries.all();

  void countriesList() {
    countriesName = [];
    update();
    countries.forEach((element) {
      countriesName.add(element.name ?? "");
      update();
      print(countriesName.length);
    });
  }

  Widget buildCountrySheet(context, index) => CustomText(
        onTap: () {
          changeNameOfCountry(countriesName[index]);
          changValueBottonSheetCity(false);
        },
        text: countriesName[index],
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
      );
}
