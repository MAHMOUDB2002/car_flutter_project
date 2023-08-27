
import 'package:car_project/modules/controllers/buy_car_controller.dart';
import 'package:car_project/modules/views/layout/home_layout.dart';
import 'package:get/get.dart';

import '../../modules/controllers/Register_Screen.dart';
import '../../modules/controllers/car_details_controller.dart';
import '../../modules/controllers/home_controller.dart';
import '../../modules/controllers/layout_controller.dart';
import '../../modules/controllers/login_controller.dart';


class HomeBinding extends Bindings {
  //Bindings لفصل التصميم عن الكود  وترتيب الكود
  
  @override
  void dependencies() {
    //  بنعلن عن الديبندنسيس وبعدين بنربطها بالروت
    // Get.lazyPut<UpdateArticleController>(
    //  //lazyPut تستدعى مرة واحدة فقط اذا انعمل الها حذف ما بينفع اعمللها تعريف مرة تانية
    //   //  جهز هاد الكونترولر لا تعرفه اذا احتجته حاستدعيه
    //   // ما بتعمل تعريف الا وقت الحاجة
    //   // وحيتماستدعائه داخل الصفحة عن طريق
    //   //UpdateArticleController controller = Get.find();
    //   // وحيتم تعريفه

    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
    
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<BuyCarController>(
      () => BuyCarController(),
    );

    Get.lazyPut<LayoutController>(
      () => LayoutController(),
    );

  Get.lazyPut<CarDetailsController>(
      () => CarDetailsController(),
    );

    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    
  }
}
