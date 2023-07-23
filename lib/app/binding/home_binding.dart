
import 'package:get/get.dart';

import '../../modules/home/controllers/Register_Screen.dart';
import '../../modules/home/controllers/login_controller.dart';


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
    //   () => UpdateArticleController(),
    // );
    // Get.lazyPut<ArticleDetailsController>(
    //   () => ArticleDetailsController(),
    // );
    // Get.lazyPut<AddArticleController>(
    //   () => AddArticleController(),
    // );
    // Get.lazyPut<UpdateProfileController>(
    //   () => UpdateProfileController(),
    // );
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    // Get.lazyPut<LayoutController>(
    //   () => LayoutController(),
    // );
    // Get.lazyPut<PageSelectionDoctorOrSickController>(
    //   () => PageSelectionDoctorOrSickController(),
    // );
  }
}
