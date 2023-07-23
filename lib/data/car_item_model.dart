import 'package:flutter/material.dart';

class CarItemModel {
  // model
  final int? id;
  final String? carImage;
  final String? carName;
  final String? carPrice;
  final Color? carFColor;
  final Color? carSColor;
  final Color? carTColor;


  CarItemModel({
    required this.id,
    required this.carImage,
    required this.carName,
    required this.carPrice,
    required this.carFColor,
    required this.carSColor,
    required this.carTColor,

  });
}
