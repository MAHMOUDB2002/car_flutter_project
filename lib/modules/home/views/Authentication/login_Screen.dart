import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key, required String title}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  TextEditingController countryController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+91";
    super.initState();
  }

  bool verification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                ],
              ),
              SizedBox(
                height: 130,
              ),
              IntlPhoneField(
                decoration: InputDecoration(
                    labelText: '',
                    border: OutlineInputBorder(borderSide: BorderSide())),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countryController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone",
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
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
                          : Icons.verified_sharp)),
                  Text(
                    "Agreeto our Terms and Data Policy",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green.shade600,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {
                      // Navigator.pushNamed(context, 'verify');
                    },
                    child: Text("Continue")),
              ),
              SizedBox(
                height: 150.0,
              ),
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
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Color(hexColor('#F1F2F3')),
                        borderRadius: BorderRadius.circular(30)),
                    child: Image(
                      image: AssetImage('assets/images/f.png'),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Color(hexColor('#F1F2F3')),
                        borderRadius: BorderRadius.circular(30)),
                    child: Image(
                      image: AssetImage('assets/images/g.png'),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Color(hexColor('#F1F2F3')),
                        borderRadius: BorderRadius.circular(30)),
                    child: Image(
                      image: AssetImage('assets/images/t.png'),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              )
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
