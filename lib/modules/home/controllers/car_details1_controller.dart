import 'package:get/get.dart';

class CarDetails1Controller extends GetxController {
  List<int> myColors = [
    0Xfff00AC5E,
    0XfffF6C604,
    0XfffFF3131,
    0Xfff424243,
    0Xfff006DEA
  ];
  int indexChoices = 0;
  int index = 0;

  List<String> choices = [
    "Photos",
    "Videos",
  ];

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
}