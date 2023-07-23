import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common_widget/custom_size_box.dart';
import '../../../../common_widget/custom_text.dart';
import '../../../common_widget/custom_buttom.dart';
import '../../../common_widget/custom_text_form.dart';
import '../controllers/Register_Screen.dart';
import '../controllers/login_controller.dart';

LoginController loginController = Get.put(LoginController());
//Get.put هنا بيعرف الكونترولر عشان يستخدمه تحت

class RegisterScreen extends GetView<RegisterController> {
  RegisterScreen({Key? key}) : super(key: key);
  var email = TextEditingController();
  var password = TextEditingController();
  var confirmPassword = TextEditingController();
  var name = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPasswordShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // CustomText(
                  //     Colors.black, 30, FontWeight.w600, "  انشاء حساب طبيب"),
                  CustomSizeBox(
                    70,
                  ),
                  CustomTextForm(
                      name, "Your name", 'Full name', TextInputType.name,
                      isPassword: false, validator: (name) {
                    if (name!.isEmpty) {
                      return "name must not be empty!!";
                    }
                  }),
                  CustomSizeBox(
                    30,
                  ),
                  CustomTextForm(email, "youremail@example.com", 'E-mail',
                      TextInputType.emailAddress, isPassword: false,
                      validator: (email) {
                    if (email!.isEmpty) {
                      return "email must not be empty!!";
                    }
                  }),
                  CustomSizeBox(
                    30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: CustomText(Colors.grey, 15, FontWeight.normal,
                        'Dont miss our latest promotions and updates'),
                  ),

                  CustomSizeBox(
                    30,
                  ),

                  CustomTextForm(
                    password,
                    "asd1234567892",
                    'password',
                    TextInputType.visiblePassword,
                    isPassword: isPasswordShow,
                    validator: (phoneNumber) {
                      if (phoneNumber!.isEmpty) {
                        return "Password must not be empty!!";
                      }
                    },
                    suffixIcon: isPasswordShow
                        ? Icons.visibility
                        : Icons.visibility_off,
                    suffixPressed: () {
                      isPasswordShow = !isPasswordShow;
                    },
                  ),
                  CustomSizeBox(
                    30,
                  ),
                  CustomTextForm(
                    confirmPassword,
                    "34455667",
                    'Confirm password',
                    TextInputType.visiblePassword,
                    validator: (password2) {
                      if (password2!.isEmpty) {
                        return "Password must not be empty!!";
                      } else if (password2 != password) {
                        return "Password does not matching!";
                      }
                    },
                    suffixIcon: isPasswordShow
                        ? Icons.visibility
                        : Icons.visibility_off,
                    isPassword: isPasswordShow,
                    suffixPressed: () {
                      isPasswordShow = isPasswordShow;
                    },
                  ),
                  CustomSizeBox(
                    50,
                  ),
                  CustomButtom(() {
                    if (formKey.currentState!.validate()) {
                      // controller.register(
                      //     email.text, password.text, name.text, phone.text);
                    }
                  }, Colors.green, 50, double.infinity, 10, Colors.white,
                      "Continue", 15),
                  CustomSizeBox(20),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     CustomTextButtom(
                  //       () {
                  //         loginController.moveBetweenPages('login');
                  //         // move to register
                  //       },
                  //       "Login",
                  //       Colors.green,
                  //       12,
                  //       FontWeight.w600,
                  //     ),
                  //     CustomText(Colors.black, 12, FontWeight.w600,
                  //         "have an account??"),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
