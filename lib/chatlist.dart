import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_application/const.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

final TextEditingController textController = TextEditingController();
bool isvisible = true;

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcTOH7v9X1Y0sB1fCgK2Hj9Sz9gGVZ8XiaB6mMADnAxhDt6vx7igOJJASEwU6JqJTLlb2-_l84Ge5gk1LjU'),
                  radius: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60.0),
                child: Text(
                  'Asifmwon',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(
                  icon: Icon(
                    Icons.videocam_outlined,
                    size: 40,
                  ),
                  onPressed: () {
                    print('Call button pressed');
                  },
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.call_outlined,
                  size: 30,
                ),
                onPressed: () {
                  print('Video call button pressed');
                },
              ),
              PopupMenuButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                  size: 30,
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(child: Text('View contact')),
                  PopupMenuItem(child: Text('Media, links, and docs')),
                  PopupMenuItem(child: Text('search')),
                  PopupMenuItem(child: Text('Mute notification')),
                  PopupMenuItem(child: Text('Disappearing messages')),
                  PopupMenuItem(child: Text('Wallpaper')),
                  PopupMenuItem(child: Text('More')),
                ],
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          BubbleSpecialThree(
            text: 'edaa motteaa evda nee',
            color: Colors.green,
            tail: false,
            textStyle: TextStyle(color: Colors.white, fontSize: 16),
          ),
          BubbleSpecialThree(
            text: 'enthdaa edi veno',
            color: Colors.green,
            tail: false,
            textStyle: TextStyle(color: Colors.white, fontSize: 16),
          ),
          BubbleSpecialThree(
            text: 'sugamaano',
            color: Colors.green,
            tail: true,
            textStyle: TextStyle(color: Colors.white, fontSize: 16),
          ),
          BubbleSpecialThree(
            text: 'aada',
            color: Color(0xFFE8E8EE),
            tail: false,
            isSender: false,
          ),
          BubbleSpecialThree(
            text: "work und ",
            color: Color(0xFFE8E8EE),
            tail: false,
            isSender: false,
          ),
          BubbleSpecialThree(
            text: "Late aavum ningal pokko",
            color: Color(0xFFE8E8EE),
            tail: true,
            isSender: false,
          ),
          Spacer(),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: TextField(
                      controller: textController,
                      onChanged: (value) {
                        setState(() {
                          isvisible = !isvisible;
                        });
                      },
                      style: TextStyle(color: blackcolor),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(Icons.emoji_emotions_outlined),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.attach_file),
                            ),
                            textController.text.isEmpty
                                ? Visibility(
                                    visible: isvisible,
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon:
                                              Icon(Icons.currency_rupee_sharp),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.camera_alt_outlined),
                                        ),
                                      ],
                                    ),
                                  )
                                : Visibility(
                                    visible: false,
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon:
                                              Icon(Icons.currency_rupee_sharp),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.camera_alt_outlined),
                                        ),
                                      ],
                                    ),
                                  )
                          ],
                        ),
                        hintText: 'Message',
                        // hintStyle: TextStyle(color: blackcolor),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                      ),
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 26,
                child: IconButton(
                  color: whitecolor,
                  icon: Icon(
                    Icons.mic,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
