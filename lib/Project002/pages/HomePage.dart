import 'package:flutter/material.dart';
import 'package:onehundred/Project002/data/ProductData.dart';

class HomePage extends StatelessWidget {
  final List<ProductData> data = ProductList;

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
              leading: Builder(
                builder: (context) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0.0,
                  ),
                  child: Icon(
                    Icons.list,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
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
                        Icons.shopping_bag,
                        color: Colors.black,
                      ),
                    ],
                  ),
                )
              ],
            ),
            drawer: Drawer(),
            body: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Enjoy the world \ninto virtual reality",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 30.0),
                    padding: EdgeInsets.all(22.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade800,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Improved Controller \nDesign With \nVirtual Reality',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                              onPressed: () {},
                              child: Text(
                                "Buy Now!",
                                style: TextStyle(
                                  color: Colors.blue.shade800,
                                ),
                              ),
                            )
                          ],
                        ),
                        Image.asset(
                          'assets/img/Project002/vr2.png',
                          height: 105.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          width: 120.0,
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade800,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "All Product",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          width: 120.0,
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Popular",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          width: 120.0,
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Recent",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 30.0, 0, 0),
                    height: 200.0,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final item = data[index];
                        return Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              width: 150.0,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    item.image,
                                    height: 100.0,
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    item.title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('\$ ${item.price}'),
                                ],
                              ),
                            ),
                            Container(
                              width: 150.0,
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: 40.0,
                                width: 40.0,
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Text(
                                  "+",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            )
                          ],
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
            ),
          ),
        ],
      ),
    );
  }
}
