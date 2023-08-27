import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app/routes/app_pages.dart';

class ProfileController extends GetxController {
  SharedPreferences? loginData;
  bool? newUser;

  logout() async {
    loginData = await SharedPreferences.getInstance();

    // newUser = (loginData?.getBool('login') ?? false);

    loginData?.remove('login');

    // print(newUser);
    // if (newUser == true) {
    Get.offNamed(Routes.LOGIN);
    update();
    // }
  }
}
