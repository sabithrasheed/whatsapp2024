import 'package:flutter/material.dart';
import 'package:whatsapp_application/bottomscreens/calls.dart';
import 'package:whatsapp_application/bottomscreens/communities.dart';

import 'package:whatsapp_application/const.dart';
import 'package:whatsapp_application/bottomscreens/home.dart';
import 'package:whatsapp_application/bottomscreens/updates.dart';
// import 'package:whatsapp_application/bottomscreens/calls.dart';
// import 'package:whatsapp_application/bottomscreens/communities.dart';
// import 'package:whatsapp_application/bottomscreens/updates.dart';
// import 'package:whatsapp_application/home.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  int _currentIndex1 = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    UpdatesScreenWidget(),
    CommuntiesWidget(),
    CallsWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex1],
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 16,
          unselectedFontSize: 12,
          selectedItemColor: Color(0xff128c7e),
          unselectedItemColor: blackcolor,
          onTap: (index) {
            setState(() {
              _currentIndex1 = index;
            });
          },
          currentIndex: _currentIndex1,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
            BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
            BottomNavigationBarItem(
                icon: Icon(Icons.group), label: 'Communities'),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls')
          ],
        ));
  }
}
