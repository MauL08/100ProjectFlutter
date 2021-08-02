import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 20.0),
      child: Container(
        padding: EdgeInsets.all(25.0),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: EdgeInsets.all(12.0),
                  child: Icon(Icons.apartment),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Apartemen",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: EdgeInsets.all(12.0),
                  child: Icon(Icons.house),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Kost",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: EdgeInsets.all(12.0),
                  child: Icon(Icons.local_hotel),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Hotel",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: EdgeInsets.all(12.0),
                  child: Icon(Icons.villa),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Villa",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
