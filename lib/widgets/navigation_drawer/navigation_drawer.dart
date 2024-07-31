import 'package:flutter/material.dart';
import 'package:flutter_web_preview/widgets/navigation_drawer/drawer_items.dart';
import 'package:flutter_web_preview/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawers extends StatelessWidget {
  const NavigationDrawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: const Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Courses', Icons.videocam),
          DrawerItem('About', Icons.help),
        ],
      ),
    );
  }
}
