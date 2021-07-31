import 'package:flutter/material.dart';

import 'Pages/HomePage.dart';
import 'Pages/ProfilePage.dart';

class Project001 extends StatefulWidget {
  @override
  _Project001State createState() => _Project001State();
}

class _Project001State extends State<Project001> {
  int _navIndex = 0;

  List<Widget> _pages = [
    HomePage(),
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_navIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _navIndex = index;
          });
        },
        currentIndex: _navIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "",
          ),
        ],
      ),
    );
  }
}
