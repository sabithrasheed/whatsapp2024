import 'package:flutter/material.dart';
import 'package:whatsapp_application/const.dart';

class StarredWidget extends StatelessWidget {
  const StarredWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Starred messages',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                  'assets/WhatsApp Image 2024-04-25 at 09.11.49_5787ad56.jpg'),
            ),
          ),
          Text(
            'Tap and hold on any\n  message in any chat to star\n it,so you can easily find it\nlater.',
            style: TextStyle(
              color: blackcolor,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
