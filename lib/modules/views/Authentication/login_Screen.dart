// import 'package:car_project/shared/style/AppTheme.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// final googleSignIn = GoogleSignIn();

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   State<LoginScreen> createState() => _LoginState();
// }

// class _LoginState extends State<LoginScreen> {
//   bool isAuth = false;
//   TextEditingController countryController = TextEditingController();

//   Future<UserCredential> signInWithGoogle() async {
//     // Trigger the authentication flow
//     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//     // Obtain the auth details from the request
//     final GoogleSignInAuthentication? googleAuth =
//         await googleUser?.authentication;

//     // Create a new credential
//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth?.accessToken,
//       idToken: googleAuth?.idToken,
//     );

//     // Once signed in, return the UserCredential
//     return await FirebaseAuth.instance.signInWithCredential(credential);
//   }

//   @override
//   void initState() {
//     countryController.text = "+91";
//     super.initState();
//     // googleSignIn.onCurrentUserChanged.listen((account) {
//     //   setState(() {
//     //     isAuth = true;
//     //   });
//     // }).onError((e) {
//     //   print('error is ${e.toString}');
//     // });

//     // try {
//     //   googleSignIn.signInSilently(suppressErrors: false).then((account) {
//     //     setState(() {
//     //       isAuth = true;
//     //     });
//     //   }).catchError((e) {
//     //     print(' error in repon ${e.toString()}');
//     //   });
//     // } catch (e) {
//     //   print('signInSilently error ${e.toString()}');
//     // }
//   }

//   // login() {
//   //   googleSignIn.signIn();
//   // }

//   bool verification = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.close,
//               color: Colors.grey,
//             )),
//       ),
//       backgroundColor: Colors.white,
//       body: Container(
//         margin: EdgeInsets.only(left: 25, right: 25),
//         alignment: Alignment.center,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 130,
//               ),
//               // IntlPhoneField(
//               //   decoration: InputDecoration(
//               //       labelText: '',
//               //       border: OutlineInputBorder(borderSide: BorderSide())),
//               // ),
//               // SizedBox(
//               //   height: 10,
//               // ),
//               Container(
//                 height: 55,
//                 decoration: BoxDecoration(
//                     border: Border.all(width: 1, color: Colors.grey),
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       width: 10,
//                     ),
//                     SizedBox(
//                       width: 40,
//                       child: TextField(
//                         controller: countryController,
//                         keyboardType: TextInputType.number,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     Text(
//                       "|",
//                       style: TextStyle(fontSize: 33, color: Colors.grey),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Expanded(
//                         child: TextField(
//                       keyboardType: TextInputType.phone,
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         hintText: "Phone",
//                       ),
//                     ))
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                       onPressed: () {
//                         setState(() {
//                           verification = !verification;
//                         });
//                       },
//                       icon: Icon(verification
//                           ? Icons.verified_outlined
//                           : Icons.verified_sharp)),
//                   Text(
//                     "Agreeto our Terms and Data Policy",
//                     style: TextStyle(
//                       fontSize: 16,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               SizedBox(
//                 width: double.infinity,
//                 height: 45,
//                 child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         primary: Colors.green.shade600,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30))),
//                     onPressed: () {
//                       // Navigator.pushNamed(context, 'verify');
//                     },
//                     child: Text(
//                       "Continue",
//                       style: TextStyle(color: Colors.white),
//                     )),
//               ),
//               SizedBox(
//                 height: 150.0,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     width: 31.w,
//                     child: Divider(
//                       color: Color(hexColor('##D1D1D6')),
//                       thickness: 1.6.h,
//                       height: 2,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 5.0.w,
//                   ),
//                   Text(
//                     ' Login With',
//                     style: TextStyle(color: Color(hexColor('#C7C7CC'))),
//                   ),
//                   SizedBox(
//                     width: 5.0.w,
//                   ),
//                   SizedBox(
//                     width: 31.w,
//                     child: Divider(
//                       color: Color(hexColor('##D1D1D6')),
//                       thickness: 1.6.h,
//                       height: 2,
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: 30.0,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     height: 55,
//                     width: 55,
//                     decoration: BoxDecoration(
//                         color: AppColor.primaryColor,
//                         borderRadius: BorderRadius.circular(30)),
//                     child: Image(
//                       image: AssetImage('assets/images/f.png'),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10.0,
//                   ),
//                   GestureDetector(
//                     onTap: () async {
//                       // login();
//                       await signInWithGoogle();
//                       // if (isAuth == true) {
//                       // Navigator.of(context).pushReplacement(
//                       //     MaterialPageRoute(builder: (context) {
//                       //   return HomeLayout();
//                       // }));
//                       // }
//                     },
//                     child: Container(
//                       height: 55,
//                       width: 55,
//                       decoration: BoxDecoration(
//                           color: AppColor.primaryColor,
//                           borderRadius: BorderRadius.circular(30)),
//                       child: Image(
//                         image: AssetImage('assets/images/g.png'),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10.0,
//                   ),
//                   Container(
//                     height: 55,
//                     width: 55,
//                     decoration: BoxDecoration(
//                         color: AppColor.primaryColor,
//                         borderRadius: BorderRadius.circular(30)),
//                     child: Image(
//                       image: AssetImage('assets/images/t.png'),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10.0,
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

import 'package:country_picker/country_picker.dart';
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../app/routes/app_pages.dart';
import '../../../utils/components/color.dart';
import 'otp_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  SharedPreferences? loginData;
  bool? newUser;

  checkifalreadyLogin() async {
    loginData = await SharedPreferences.getInstance();

    newUser = (loginData?.getBool('login') ?? false);

    print(newUser);
    if (newUser == true) {
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

  void _userLogin() async {
    String mobile = phoneController.text;
    if (mobile == "") {
      Get.snackbar(
        "Please enter the mobile number!",
        "Failed",
        colorText: Colors.red,
      );
    } else {
      signInWithPhoneNumber("+${selectedCountry.phoneCode}$mobile");
      loginData?.setString("phone", "+${selectedCountry.phoneCode}$mobile");
    }
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  _buildSocialLogo(file) {
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

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  void signTwitter() {
    // signInWithGoogle();
  }

  bool verification = true;

  @override
  void initState() {
    checkifalreadyLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    phoneController.selection = TextSelection.fromPosition(
      TextPosition(
        offset: phoneController.text.length,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 200),
              buildText('Log In'),
              SizedBox(height: 50),
              Container(
                width: 315.w,
                // margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.white,
                  controller: phoneController,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  onChanged: (value) {
                    setState(() {
                      phoneController.text = value;
                    });
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Mobile number",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: UnderlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(20, 16.5, 20, 10),
                    // focusedBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(100.0),
                    //     borderSide: BorderSide(color: Colors.black)),
                    // enabledBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(100.0),
                    //     borderSide: BorderSide(color: Colors.black38)),
                    // errorBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(100.0),
                    //     borderSide:
                    //         BorderSide(color: Colors.white, width: 2.0)),
                    // focusedErrorBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(100.0),
                    //     borderSide:
                    //         BorderSide(color: Colors.black38, width: 2.0)),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          showCountryPicker(
                              context: context,
                              countryListTheme: const CountryListThemeData(
                                bottomSheetHeight: 550,
                              ),
                              onSelect: (value) {
                                setState(() {
                                  selectedCountry = value;
                                });
                              });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    suffixIcon: phoneController.text.length > 8
                        ? Container(
                            height: 30,
                            width: 30,
                            margin: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: const Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        : null,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        verification = !verification;
                      });
                    },
                    icon: Icon(verification
                        ? Icons.verified_outlined
                        : Icons.verified_sharp),
                    iconSize: 17,
                  ),
                  Text(
                    "Agreeto our Terms and Data Policy",
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: style,
                  // color: AppColor.secondryColor,
                  onPressed: _userLogin,
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )),
              SizedBox(height: 187.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 31.w,
                    child: Divider(
                      color: Color(hexColor('##D1D1D6')),
                      thickness: 1.6.h,
                      height: 2,
                    ),
                  ),
                  SizedBox(
                    width: 5.0.w,
                  ),
                  Text(
                    ' Login With',
                    style: TextStyle(color: Color(hexColor('#C7C7CC'))),
                  ),
                  SizedBox(
                    width: 5.0.w,
                  ),
                  SizedBox(
                    width: 31.w,
                    child: Divider(
                      color: Color(hexColor('##D1D1D6')),
                      thickness: 1.6.h,
                      height: 2,
                    ),
                  ),
                ],
              ),
              // const Text(
              //   "Login With ",
              //   style: TextStyle(fontSize: 12, color: Colors.grey),
              // ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      signFacebook();
                    },
                    child: _buildSocialLogo('assets/images/f.png'),
                  ),
                  SizedBox(width: 40),
                  GestureDetector(
                    onTap: () {
                      signTwitter();
                    },
                    child: _buildSocialLogo('assets/images/t.png'),
                  ),
                  SizedBox(width: 40),
                  GestureDetector(
                    onTap: () async {
                      Get.dialog(Center(child: CircularProgressIndicator()));
                      var result = await signInWithGoogle();
                      if (result.credential != null) {
                        // CashHelper.userLogged(key: key, value: value)
                        loginData?.setBool('login', true);
                        Get.offNamed(Routes.HOME_LAYOUT);
                      }
                    },
                    child: _buildSocialLogo('assets/images/g.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int hexColor(String c) {
  String sColor = '0xff' + c;
  sColor = sColor.replaceAll('#', '');
  int dColor = int.parse(sColor);
  return dColor;
}
