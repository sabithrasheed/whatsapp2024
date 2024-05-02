
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_application/const.dart';

class CommuntiesWidget extends StatelessWidget {
  const CommuntiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Communities',
            style: TextStyle(
              fontSize: 25.sp,
            ),
          ),
          actions: [
            Icon(
              Icons.photo_camera,
            ),
            sizedbox10,
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(child: Text('Settings')),
              ],
              offset: Offset(0, 50.h),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Container(
                width: 180.w,
                height: 165.h,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/asdf.jpg')),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20.r,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Stay connected with a community',
                    style: TextStyle(
                        color: blackcolor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Communities bring members together in \n topic based groups,and make it easy to get admin \n announcements.Any community you are added to will\n appear here',
                    style: TextStyle(color: Colors.black87),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See example communities >',
                        style: TextStyle(color: Colors.green),
                      )),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    width: 340.h,
                    height: 40.h,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          Colors.green,
                        )),
                        onPressed: () {},
                        child: Text(
                          'Start your community',
                          style: TextStyle(
                            color: whitecolor,
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
