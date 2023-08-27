import 'dart:ui';

import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app/routes/app_pages.dart';
import '../../utils/components/color.dart';
import '../views/Authentication/otp_page.dart';

class LoginController extends GetxController {
  final count = 0.obs;
  void increment() => count.value++;

  void moveBetweenPages(route, {arguments}) {
    Get.offNamed(route, arguments: arguments);
  }

  late SharedPreferences loginData;
  bool? newUser;

  checkifalreadyLogin() async {
    loginData = await SharedPreferences.getInstance();
    newUser = (loginData.getBool('login') ?? true);

    print(newUser);
    if (newUser == false) {
      update();
      Get.offNamed(Routes.HOME_LAYOUT);
    }
  }

  final googleSignIn = GoogleSignIn();
  final TextEditingController phoneController = TextEditingController();

  Future<void> signInWithPhoneNumber(String phoneNumber) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
        // authentication successful, do something
      },
      verificationFailed: (FirebaseAuthException e) {
        // authentication failed, do something
      },
      codeSent: (String verificationId, int? resendToken) async {
        // code sent to phone number, save verificationId for later use
        String smsCode = ''; // get sms code from user
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: smsCode,
        );
      update();

        Get.to(OtpPage(), arguments: [verificationId]);
        await auth.signInWithCredential(credential);
        // authentication successful, do something
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  Country selectedCountry = Country(
    phoneCode: "970",
    countryCode: "PAL",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "Palestine",
    example: "Palestine",
    displayName: "Palestine",
    displayNameNoCountryCode: "PAL",
    e164Key: "",
  );

  userLogin() async {
    String mobile = phoneController.text;
    if (mobile == "") {
      Get.snackbar(
        "Please enter the mobile number!",
        "Failed",
        colorText: Colors.red,
      );
      update();
    } else {
      signInWithPhoneNumber("+${selectedCountry.phoneCode}$mobile");
      loginData.setString("phone", "+${selectedCountry.phoneCode}$mobile");
      update();
    }
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  buildSocialLogo(file) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(30)),
          child: Image.asset(
            file,
            height: 38.5,
          ),
        ),
      ],
    );
  }

  final ButtonStyle style = ElevatedButton.styleFrom(
      minimumSize: Size(315.w, 48.h),
      backgroundColor: AppColor.secondryColor,
      elevation: 6,
      textStyle: const TextStyle(fontSize: 16),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(50),
      )));

  Widget buildText(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      );

  void signFacebook() {
    // signInWithFacebook();
  }
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
      update();

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
    
  }

  void signTwitter() {
    // signInWithGoogle();
  }

  bool verification = true;
}
