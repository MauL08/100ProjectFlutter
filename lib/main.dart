import 'package:flutter/material.dart';
import 'package:onehundred/Project002/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '100Project',
      home: Project002(),
    );
  }
}
