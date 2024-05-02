import 'package:flutter/material.dart';
import 'package:status_view/status_view.dart';

class ListtileWidget extends StatelessWidget {
  const ListtileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
      title: Text('Asif Mwone'),
      subtitle: Text('4:30 pm'),
    );
  }
}
