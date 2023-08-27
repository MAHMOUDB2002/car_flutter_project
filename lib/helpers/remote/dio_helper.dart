// import 'package:dio/dio.dart';
// class DioHelper {
//   static Dio? dio;
//   static init() {
//     dio = Dio(
//       BaseOptions(

//         baseUrl: 'https://cars-api.ameerabunada.com/api/',
//         receiveDataWhenStatusError: true,
//         // headers: {
//         //   'Content-Type': 'application/json', // never change
//         // }
//       ),

//     );
//   }

//   static Future<Response> getData(
//       {required String url,
//       Map<String, dynamic>? query,
//       // String lang = 'ar',
//       // String? token
//       // required Map query,
//       }) async {
//     dio!.options.headers = {
//       'Accept': 'application/json',
//       // 'lang': lang,
//       // 'Authorization': token,
//     };

//     return await dio!.get(
//       url,
//       queryParameters: query,
//     );
//   }

// }

import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://cars-api.ameerabunada.com/api/v1",
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> post_data(
      {required String url,
      required Map<String, dynamic>? data,
      String? lang = "en",
      String? toaken}) async {
    dio!.options.headers = {
      "lang": "$lang",
      "Authorization": "${toaken ?? ''}",
      "Content-Type": "application/json",
    };
    return await dio!.post(url, data: data);
  }

  static Future<Response> get_data({
    required String url,
    Map<String, dynamic>? data,
  }) async {
    dio!.options.headers = {
      "Accept": "application/json",
    };
    return await dio!.get(url, queryParameters: data);
  }

  static Future<Response?> put_data(
      {required String url,
      required Map<String, dynamic>? data,
      String? lang = "en",
      String? toaken}) async {
    dio!.options.headers = {
      "lang": "$lang",
      "Authorization": "${toaken ?? ''}",
      "Content-Type": "application/json",
    };
    return await dio?.put(url, data: data);
  }
}
