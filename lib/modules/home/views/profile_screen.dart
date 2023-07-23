import 'package:car_project/modules/home/views/login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/shared/style/AppTheme.dart';
import '../../../common_widget/custom_icon.dart';

class ProfileScreen extends StatelessWidget {
  // Function function;
  // ProfileScreen(this.function);
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.colors.primaryColor,
        leading: CustomIcon(
          icon: Icons.arrow_back,
          size: 30.h,
          color: AppTheme.colors.iconPrimaryColor,
        ),
        actions: [
          // Container(
          //   width: 30.w,
          //   height: 30.h,
          //   padding: EdgeInsets.all(8),
          //   decoration:
          //       BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          //   alignment: Alignment.center,
          //   child: Icon(
          //     size: 17,
          //     Icons.settings,
          //     color: Colors.black,
          //   ),
          // ),

          Container(
            width: 30.w,
            height: 30.h,
            padding: EdgeInsets.all(8),
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.message,
                  size: 20,
                  color: Colors.black,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 10.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: Row(
                      children: [
                        Text(
                          '10',
                          style: TextStyle(
                            fontSize: 8.0.sp,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 30.w,
            height: 30.h,
            padding: EdgeInsets.all(8),
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            alignment: Alignment.center,
            child: Icon(
              size: 17,
              Icons.settings,
              color: Colors.black,
            ),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(
          //     Icons.settings,
          //     color: Colors.black,
          //   ),
          // ),
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              // Row(
              //   children: [
              //     IconButton(
              //         onPressed: () {},
              //         icon: Icon(
              //           Icons.arrow_back,
              //           color: Colors.black,
              //         )),
              //     Spacer(),
              //     Container(
              //       width: 30.w,
              //       height: 30.h,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(20),
              //         color: Colors.white,
              //       ),
              //       child: Stack(
              //         alignment: Alignment.center,
              //         children: [
              //           Icon(
              //             Icons.message,
              //             size: 20,
              //             color: Colors.black,
              //           ),
              //           Align(
              //             alignment: Alignment.topRight,
              //             child: Container(
              //               width: 10.w,
              //               height: 10.h,
              //               decoration: BoxDecoration(
              //                   shape: BoxShape.circle, color: Colors.red),
              //               child: Row(
              //                 children: [
              //                   Text(
              //                     '10',
              //                     style: TextStyle(
              //                       fontSize: 8.0.sp,
              //                       color: Colors.white,
              //                     ),
              //                     textAlign: TextAlign.center,
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //     IconButton(
              //         onPressed: () {},
              //         icon: Icon(
              //           Icons.settings,
              //           color: Colors.black,
              //         )),
              //   ],
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 50,
                      backgroundColor: Colors.green,
                      backgroundImage: AssetImage('assets/images/ps5.png'),
                    ),
                    SizedBox(
                      width: 20..w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sebastian',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.sp),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          'BMW',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.sp,
                              color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              children: [
                Container(
                  width: 71.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.green),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.green,
                      ),
                      Text(
                        'Follow',
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 40.w,
                ),
                Column(
                  children: [
                    Text(
                      '47',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text('Following',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey)),
                  ],
                ),
                SizedBox(
                  width: 30.w,
                ),
                Column(
                  children: [
                    Text(
                      '544548888',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text('Follower',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey)),
                  ],
                ),
                SizedBox(
                  width: 30.w,
                ),
                Column(
                  children: [
                    Text(
                      '99',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text('Posts',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(hexColor('#FFFFFF')),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.qr_code_2),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text('Common Functions')
                      ],
                    ),
                    SizedBox(
                      height: 15.w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 76.w,
                          height: 76.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(hexColor('F1F2F3'))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.text_snippet,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'My order',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12.sp),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 76.w,
                          height: 76.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(hexColor('F1F2F3'))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.design_services_sharp,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Maintain',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 76.w,
                          height: 76.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(hexColor('F1F2F3'))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart_sharp,
                                color: Colors.blue[900],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text('Auto parts',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12.sp))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 76.w,
                          height: 76.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(hexColor('F1F2F3'))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.green,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Driving skills',
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Icon(Icons.car_crash_outlined),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text('My cars')
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Owned/Driven',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        Spacer(),
                        // SizedBox(
                        //   width: 230.w,
                        // ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Like List',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        Spacer(),
                        // SizedBox(
                        //   width: 272,
                        // ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Icon(Icons.save),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text('Others')
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Feedback',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        Spacer(),
                        // SizedBox(
                        //   width: 263.w,
                        // ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Log Out',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
