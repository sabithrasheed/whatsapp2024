import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
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
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                    'assets/WhatsApp Image 2024-04-26 at 12.40.44_01f74912.jpg'),
              ),
              title: Text('Blablabla'),
              subtitle: Text('In a meeting'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.qr_code,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade100,
              thickness: 2,
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.key,
                  )),
              title: Text('Account'),
              subtitle: Text('Security notifications, change number'),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.lock,
                  )),
              title: Text('Privacy'),
              subtitle: Text('Block contacts, disappearing\n messages'),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.emoji_events,
                  )),
              title: Text('Avatar'),
              subtitle: Text('Create, edit, profile photo'),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chat,
                  )),
              title: Text('Chats'),
              subtitle: Text('Theme, wallpapers, chat hostory'),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                  )),
              title: Text('Notifications'),
              subtitle: Text('Message, group & call tones'),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.store,
                  )),
              title: Text('Storage and data'),
              subtitle: Text('Network usage, auto-download'),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.app_registration,
                  )),
              title: Text('App language'),
              subtitle: Text('English (device language)'),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.help_rounded,
                  )),
              title: Text('Help'),
              subtitle: Text('Help centre, contact us, privacy policy'),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.group,
                  )),
              title: Text('Invite a friend'),
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.phone_android,
                  )),
              title: Text('App updates'),
            ),
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/WhatsApp Image 2024-04-26 at 11.13.45_11ef5b22.jpg'))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
