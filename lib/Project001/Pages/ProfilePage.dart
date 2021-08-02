import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 162.0,
              color: Colors.yellow[700],
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(left: 35.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Profil",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                width: double.infinity,
                height: 480.0,
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Akbar Maulana',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              '08xx-xxxx-xxxx',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: Icon(Icons.account_circle),
                              title: Text(
                                "Akun",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(Icons.arrow_forward),
                            ),
                            ListTile(
                              leading: Icon(Icons.lock),
                              title: Text(
                                "Kode Pin",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(Icons.arrow_forward),
                            ),
                            ListTile(
                              leading: Icon(Icons.info_rounded),
                              title: Text(
                                "Informasi Tagihan",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(Icons.arrow_forward),
                            ),
                            ListTile(
                              leading: Icon(Icons.money),
                              title: Text(
                                "Poin Saya",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(Icons.arrow_forward),
                            ),
                            ListTile(
                              leading: Icon(Icons.settings),
                              title: Text(
                                "Pengaturan",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(Icons.arrow_forward),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.white,
                            side: BorderSide(color: Colors.red, width: 3.0),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            child: Text(
                              "Keluar",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
