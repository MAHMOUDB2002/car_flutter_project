import 'package:shared_preferences/shared_preferences.dart';

class CashHelper {
  // static late SharedPreferences? sharedPreferences;

  // static SharedPreferences? sharedPreferences;
  static  SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }


 static Future<bool> userLogged({
    required String key,
    required bool value,
  }) async {
    return await sharedPreferences!.setBool(key, value);
  }


  static Future<bool> putBool({
    required String key,
    required bool value,
  }) async {
    return await sharedPreferences!.setBool(key, value);
  }

  static bool? getBool({
    required String key,
  }) {
    return sharedPreferences!.getBool(key);
  }


    static dynamic getData({
    required String key,
  }) {
    return sharedPreferences!.get(key);
    // .get  بتاخد اي نوع داتا سترينج و بوول و دبل
  }

  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await sharedPreferences!.setString(key, value);
     //الداتا لما تدخل لو سترينج حتتخزن هنا

    if (value is int) return await sharedPreferences!.setInt(key, value);
    // لو انت حتتخزن هنا

    if (value is bool) return await sharedPreferences!.setBool(key, value);
// لو بوول حتتخزن هنا
    return await sharedPreferences!.setDouble(key, value);
    // غير هيك حتتخزن دبل
  }



  static Future<bool> removeData({
    required String key,
  }) async {
    return await sharedPreferences!.remove(key);
  }
}
