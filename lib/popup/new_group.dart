import 'package:flutter/material.dart';
import 'package:whatsapp_application/const.dart';
import 'package:whatsapp_application/map_synatx.dart';

class NewGroupWidget extends StatelessWidget {
  const NewGroupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('New group', style: TextStyle(fontSize: 20)),
            Text(
              'Add members',
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Divider(
              color: Colors.grey.shade100,
              thickness: 2,
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                'Contacts on Whatsapp',
                style: TextStyle(color: Colors.grey.shade900, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 210),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      backgroundColor: Colors.green,
                      onPressed: () {},
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                        ),
                        color: whitecolor,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
