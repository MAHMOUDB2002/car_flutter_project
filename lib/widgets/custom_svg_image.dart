import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgImage extends StatelessWidget {
  String image;
  double height;
  Color? color;
  double? width;
  BoxFit? fit;

  CustomSvgImage(
      {required this.image,
      required this.height,
      this.color,
      this.width,
      this.fit});
  @override
  Widget build(BuildContext context) {
    return SvgPicture.network(
      image,
    );
    // SvgPicture.network(
    //   // image: AssetImage(image),
    //   // height: height,
    //   // fit: fit,
    //   // width: width,
    //   // color: color,
    // );
  }
}

// class CustomSvgImage {
//   String? image;
//   int? height;

//   CustomSvgImage({this.image, this.height});
// }
