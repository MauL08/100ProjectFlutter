import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: new AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: Icon(
                Icons.list,
                color: Colors.black,
              ),
              actions: [
                Container(
                  padding: EdgeInsets.only(right: 15.0),
                  margin: EdgeInsets.only(top: 7.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15.0),
                      Icon(
                        Icons.inventory_2,
                        color: Colors.black,
                      ),
                    ],
                  ),
                )
              ],
            ),
            body: Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Enjoy the world \ninto virtual reality",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                                'Improved Controller \nDesign With \nVirtual Reality'),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Buy Now!"),
                            )
                          ],
                        ),
                        Image.asset(
                          'assets/img/Project002/vr.png',
                          height: 100.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
