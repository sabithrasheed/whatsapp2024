import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_application/const.dart';
import 'package:whatsapp_application/map_synatx.dart';

class CallsWidget extends StatelessWidget {
  const CallsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitecolor,
        title: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            'Calls',
            style: TextStyle(
              fontSize: 26.sp,
              // fontWeight: FontWeight.w600,
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
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25.r,
              backgroundColor: Colors.green.shade600,
              child: Icon(
                Icons.link,
                color: whitecolor,
                size: 29.sp,
              ),
            ),
            title: Text(
              'Create call link',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Share a link for your Whatsapp call',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              Text(
                'Recent',
                style: TextStyle(
                  color: blackcolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chatlist.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25.r,
                    backgroundColor: Colors.green.shade600,
                    backgroundImage: NetworkImage(chatlist[index]['image']),
                  ),
                  title: Text(chatlist[index]['name']),
                  subtitle: Text(chatlist[index]['timeday']),
                  trailing: Icon(
                    Icons.videocam,
                    color: Colors.green,
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: () {},
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_ic_call,
                        color: blackcolor,
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
