import 'package:flutter/material.dart';
import '../data/PlaceData.dart';

class Recommendation extends StatelessWidget {
  final List<PlaceData> data = PlaceList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30.0, 0, 0, 20.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rekomendasi",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Text("Lihat Detail"),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 180.0,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final item = data[index];
                return Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        item.image,
                        height: 100.0,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 15.0, 0, 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Text(
                                  "Rp. ${item.price}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  " / malam",
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                );
              },
              itemCount: data.length,
            ),
          ),
        ],
      ),
    );
  }
}
