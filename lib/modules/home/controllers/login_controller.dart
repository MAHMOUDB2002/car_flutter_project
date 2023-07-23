

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginController extends GetxController {
  final count = 0.obs;
  void increment() => count.value++;

  void moveBetweenPages(route, {arguments}) {
    Get.offNamed(route, arguments: arguments);
  }

  // void login(dynamic email, dynamic password) {
  //   checkIsEmailInDoctorsCollection(email, password);
  //   update();
  // }

  // void checkIsEmailInDoctorsCollection(dynamic email, dynamic password) {
  //   FirebaseFirestore.instance
  //       .collection('doctors')
  //       .where('email', isEqualTo: email)
  //       .get()
  //       .then((value) {
  //     if (value.docs.length != 0) {
  //       FirebaseAuth.instance
  //           .signInWithEmailAndPassword(email: email, password: password)
  //           .then((value) {
  //         GetStorage().write('token', value.user?.uid);

  //         tokenOfDoctors = value.user!.uid;
  //         update();
  //         moveBetweenPages('layout');
  //       }).catchError((error) {
  //         print(error.toString());
  //       });
  //     } else {
  //       print("The email isn't in doctors ");
  //     }
  //   });
  //   update();
  // }
}
