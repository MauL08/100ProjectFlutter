import 'package:flutter/material.dart';
import 'package:onehundred/Project003/data.dart';

class HomeScreen extends StatelessWidget {
  final List<Vegetables> data = list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              actions: [
                Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10.0,
                )
              ],
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 5.0),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              splashFactory: NoSplash.splashFactory,
                              primary: Colors.transparent,
                              elevation: 0.0,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Vegetables",
                              style: TextStyle(
                                color: Colors.green.shade800,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              splashFactory: NoSplash.splashFactory,
                              primary: Colors.transparent,
                              elevation: 0.0,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Fruits",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          hintText: "Search",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GridView.builder(
                      primary: false,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (context, index) {
                        final value = data[index];
                        return Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(8.0),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.grey.shade300,
                              ),
                              child: Container(
                                child: Stack(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 120.0,
                                          height: 120.0,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(value.image),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          value.name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '1kg Price',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                        Text(
                                          '\$ ${value.price}',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                height: 40.0,
                                width: 40.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green.shade700,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    '+',
                                    style: TextStyle(fontSize: 24.0),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      },
                      itemCount: data.length,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
