import 'package:flutter/material.dart';
import 'package:onehundred/Project001/component/Categories.dart';
import 'package:onehundred/Project001/component/Destination.dart';
import 'package:onehundred/Project001/component/Information.dart';
import 'package:onehundred/Project001/component/Recommendation.dart';
import '../component/HeaderApp.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderApp(),
            Categories(),
            Recommendation(),
            Destination(),
            Information(),
          ],
        ),
      ),
    );
  }
}
