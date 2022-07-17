import 'package:flutter/material.dart';
import 'package:inscribe/Home/components/project_list_item.dart';
import 'package:inscribe/Home/components/search_bar.dart';
import 'package:inscribe/Home/screens/recents_frag.dart';

class Home extends StatelessWidget {
  
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: RecentsFrag()
      )),
      bottomNavigationBar:
          BottomNavigationBar(fixedColor: Colors.black, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black87), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black87), label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.black87),
            label: "Notifications"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black87), label: "Person"),
      ]),
    );
  }
}
