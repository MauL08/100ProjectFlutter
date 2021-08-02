import 'package:flutter/material.dart';
import 'package:onehundred/Project001/data/DestinationData.dart';

class Destination extends StatelessWidget {
  final List<DestinationData> data = DestinationList;

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
                  "Destinasi",
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
            height: 130.0,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final item = data[index];
                return Container(
                  width: 220.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(item.image),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black87.withOpacity(0.4),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      item.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
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
          )
        ],
      ),
    );
  }
}
