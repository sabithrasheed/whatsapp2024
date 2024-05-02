import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:status_view/status_view.dart';
import 'package:whatsapp_application/const.dart';
import 'package:whatsapp_application/list_tile.dart';
import 'package:whatsapp_application/map_synatx.dart';

class UpdatesScreenWidget extends StatelessWidget {
  const UpdatesScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: whitecolor,
        title: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            'Updates',
            style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Icon(
              Icons.camera_alt,
            ),
          ),
          sizedbox10,
          Icon(Icons.search),
          sizedbox10,
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Settings'),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    sizedbox10,
                    Text(
                      'Status',
                      style: TextStyle(
                          fontSize: 24.sp,
                          color: blackcolor,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text('Settings'),
                        ),
                      ],
                    ),
                  ]),
              ListTile(
                // leading: CircleAvatar(
                //   radius: 30,
                //   backgroundImage: NetworkImage(
                //     'https://m.media-amazon.com/images/I/81OcZThCE9L._AC_UF1000,1000_QL80_.jpg',
                //   ),
                // ),
                leading: StatusView(
                  radius: 30,
                  spacing: 15,
                  strokeWidth: 2,
                  indexOfSeenStatus: 2,
                  numberOfStatus: 5,
                  padding: 4,
                  centerImageUrl: "https://picsum.photos/200/300",
                  seenColor: Colors.green,
                  unSeenColor: Colors.green,
                ),
                title: Text('My Status'),
                subtitle: Text('Tap to add status update'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Recent updates',
                  style: TextStyle(color: blackcolor),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ListView(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: List.generate(10, (index) => ListtileWidget()),
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Channels',
                      style: TextStyle(
                        color: blackcolor,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: blackcolor,
                        ))
                  ],
                ),
              ),
              // SizedBox(
              //   height: 06,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Stay updated on topics that matter to you . Find channnel to follow below .',
                  style: TextStyle(color: blackcolor),
                ),
              ),
              SizedBox(
                height: 06.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Find channels',
                  style: TextStyle(
                    color: blackcolor,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 06.h,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    chatlist.length,
                    (index) => Card(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5.h,
                            ),
                            CircleAvatar(
                              radius: 30.r,
                              backgroundImage:
                                  NetworkImage(chatlist[index]['image']),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              chatlist[index]['name'],
                              style: TextStyle(color: blackcolor),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.lightGreen)),
                                onPressed: () {},
                                child: Text(
                                  'Follow',
                                  style: TextStyle(color: whitecolor),
                                ))
                          ],
                        ),
                        width: MediaQuery.of(context).size.width / 3,
                        height: 155.h,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.green.shade700)),
                  onPressed: () {},
                  child: Text(
                    'Explore more',
                    style: TextStyle(
                      color: whitecolor,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 310),
                child: Column(
                  children: [
                    Container(
                      width: 38.w,
                      height: 40.h,
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.edit),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.green,
                      onPressed: () {},
                      child: Icon(
                        Icons.photo_camera,
                        color: whitecolor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
