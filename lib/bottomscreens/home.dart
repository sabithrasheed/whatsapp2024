import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_application/chatlist.dart';
import 'package:whatsapp_application/const.dart';
import 'package:whatsapp_application/map_synatx.dart';
import 'package:whatsapp_application/popup/linked_devices.dart';
import 'package:whatsapp_application/popup/new_broadcast.dart';
import 'package:whatsapp_application/popup/new_group.dart';
import 'package:whatsapp_application/popup/payments.dart';
import 'package:whatsapp_application/popup/settings.dart';
import 'package:whatsapp_application/popup/starred_mess.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController homecontroller = TextEditingController();
  List<Map<String, dynamic>> filteredChatList = List.from(chatlist);

  void _filterChatList(String query) {
    setState(() {
      filteredChatList = chatlist
          .where((chat) =>
              chat['name'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whitecolor,
      appBar: AppBar(
        backgroundColor: whitecolor,
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Color(0xff128c7e),
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () async {
              // Open camera when the photo camera icon is pressed
              final ImagePicker _picker = ImagePicker();
              XFile? image =
                  await _picker.pickImage(source: ImageSource.camera);
              if (image != null) {
                // Handle the captured image here, you can save it, display it, or process it further
              }
            },
            child: Icon(
              Icons.camera_alt,
            ),
          ),
          SizedBox(width: 10),
          // Icon(Icons.search),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return NewGroupWidget();
                    }));
                  },
                  child: Text('New group'),
                ),
              ),
              PopupMenuItem(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BroadcastWidget();
                    }));
                  },
                  child: Text(
                    'New broadcast',
                  ),
                ),
              ),
              PopupMenuItem(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LinkedWidget();
                    }));
                  },
                  child: Text(
                    'Linked devices',
                  ),
                ),
              ),
              PopupMenuItem(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return StarredWidget();
                    }));
                  },
                  child: Text(
                    'Starred messages',
                  ),
                ),
              ),
              PopupMenuItem(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PaymentWidget();
                    }));
                  },
                  child: Text(
                    'Payments',
                  ),
                ),
              ),
              PopupMenuItem(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SettingsWidget();
                    }));
                  },
                  child: Text(
                    'Settings',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: TextField(
                controller: homecontroller,
                onChanged: _filterChatList, // Call filter method on text change
                style: TextStyle(
                  color: blackcolor,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(
                    3,
                  ),
                  labelStyle: TextStyle(
                    color: blackcolor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.r),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search....',
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
            ),
          ),
          // Use filteredChatList instead of chatlist here
          Flexible(
            child: ListView.builder(
              // Your existing code...
              itemCount: filteredChatList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(filteredChatList[index]['image']),
                    radius: 30.r,
                  ),
                  title: Text(filteredChatList[index]['name']),
                  subtitle: Text(filteredChatList[index]['subtitle']),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        filteredChatList[index]['time'],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CircleAvatar(
                        radius: 10.r,
                        backgroundColor: Colors.green,
                        child: Text(
                          filteredChatList[index]['count'],
                          style: TextStyle(
                            color: whitecolor,
                          ),
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    if (filteredChatList[index]['name'] == 'Sabith') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ChatPage();
                      }));
                    } else if (filteredChatList[index]['name'] == 'AsifMon') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ChatPage();
                      }));
                    } else if (filteredChatList[index]['name'] == 'Afsal') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ChatPage();
                      }));
                    } else if (filteredChatList[index]['name'] == 'Aslah') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ChatPage();
                      }));
                    } else if (filteredChatList[index]['name'] ==
                        'Pappal bro') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ChatPage();
                      }));
                    }
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
