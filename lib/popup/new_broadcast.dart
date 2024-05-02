import 'package:flutter/material.dart';

import 'package:whatsapp_application/const.dart';
import 'package:whatsapp_application/map_synatx.dart';

class BroadcastWidget extends StatelessWidget {
  const BroadcastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('New broadcast', style: TextStyle(fontSize: 20)),
            Text(
              '0 of 85 selected',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ))
        ],
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.grey.shade100,
            thickness: 2,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Only contacts with +91 9255756238 in their address\n book will receive your broadcast messages.',
            style: TextStyle(color: Colors.grey.shade900, fontSize: 15),
          ),
          Divider(
            color: Colors.grey.shade100,
            thickness: 2,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: List.generate(
                    chatlist.length,
                    (index) => ListTile(
                          leading: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(chatlist[index]['image'])),
                          title: Text(chatlist[index]['name']),
                          subtitle: Text(chatlist[index]['subtitle3']),
                        )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 314),
              child: FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: () {},
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.done,
                      color: whitecolor,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
