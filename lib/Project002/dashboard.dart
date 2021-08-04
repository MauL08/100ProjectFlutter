import 'package:flutter/material.dart';
import 'package:onehundred/Project002/pages/HomePage.dart';

class Project002 extends StatefulWidget {
  @override
  _Project002State createState() => _Project002State();
}

class _Project002State extends State<Project002> {
  int _navIndex = 0;

  List<Widget> _pages = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_navIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue.shade800,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        onTap: (index) {
          setState(() {
            _navIndex = index;
          });
        },
        currentIndex: _navIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
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
