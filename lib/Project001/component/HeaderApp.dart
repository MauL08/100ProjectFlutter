import 'package:flutter/material.dart';

class HeaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340.0,
      padding: EdgeInsets.fromLTRB(30.0, 50.0, 25.0, 30.0),
      color: Colors.yellow[700],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 6.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                width: 275.0,
                height: 45.0,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Cari hotel, apartement, kost",
                    hintStyle: TextStyle(fontSize: 13),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Icon(Icons.notifications),
              )
            ],
          ),
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Diskon ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            "60% ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.red,
                            ),
                          ),
                          Text(
                            "untuk",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                      Text(
                        "pengguna baru*",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 14.0),
                  Text(
                    "*) S&K berlaku",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Row(
                    children: [
                      Text(
                        ".",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                        "..",
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Image.asset(
                  'assets/img/Project001/home.png',
                  height: 160.0,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
