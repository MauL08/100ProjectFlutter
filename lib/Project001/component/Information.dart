import 'package:flutter/material.dart';
import 'package:onehundred/Project001/data/InfoData.dart';

class Information extends StatelessWidget {
  final List<InfoData> data = InfoList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30.0, 0.0, 0, 20.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Informasi Untukmu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            margin: EdgeInsets.only(right: 30.0),
            alignment: Alignment.bottomCenter,
            height: 320.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/Project001/hotel1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              height: 110.0,
              margin: EdgeInsets.only(bottom: 10.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final item = data[index];
                        return Container(
                          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                          width: 280.0,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item.time,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Icon(Icons.arrow_right),
                                ],
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
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 20.0),
                      Container(
                        height: 8,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      Container(
                        height: 8,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      Container(
                        height: 8,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      Container(
                        height: 8,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      Container(
                        height: 8,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      SizedBox(width: 20.0),
                    ],
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
