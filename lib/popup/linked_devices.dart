import 'package:flutter/material.dart';


import 'package:whatsapp_application/const.dart';

class LinkedWidget extends StatelessWidget {
  const LinkedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Linked devices',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.grey.shade100,
            thickness: 2,
          ),
          Container(
            width: 280,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/WhatsApp Image 2024-04-24 at 12.42.34_43f197ba.jpg'))),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Use Whatsapp on web,Desktop,and other devices.',
            style: TextStyle(
              color: blackcolor,
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Learn more',
                style: TextStyle(
                  color: Colors.blue,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              width: 350,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                    Colors.green,
                  )),
                  onPressed: () {},
                  child: Text(
                    'Linked a device',
                    style: TextStyle(
                      color: whitecolor,
                    ),
                  ))),
          SizedBox(
            height: 12,
          ),
          Divider(
            color: Colors.grey.shade200,
            thickness: 8,
          ),
          SizedBox(
            height: 5,
          ),
          ColoredBox(
            color: Colors.white70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Text(
                    'Device status',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 14,
                  ),
                  child: Text(
                    'Tap a device to logout.',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green.shade900,
                      radius: 22,
                      child: Icon(
                        Icons.window,
                        size: 28,
                        color: whitecolor,
                      ),
                    ),
                    title: Text('Windows'),
                    subtitle: Text('Last active today at 5.30 pm'),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.shade200,
            thickness: 1,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              children: [
                Icon(
                  Icons.lock,
                  color: Colors.black38,
                  size: 15,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Your personal Messages are',
                  style: TextStyle(
                    color: blackcolor,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(onTap: (){},
                  child: Text(
                    'end-to-encrypted',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'on all your devices',
            style: TextStyle(
              color: blackcolor,
            ),
          ),
        ],
      ),
    );
  }
}
