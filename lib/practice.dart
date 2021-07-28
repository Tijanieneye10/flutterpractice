import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:layout/custom_widget/semi-text.dart';

class Practice extends StatefulWidget {
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    void getData() async {
      var uri = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
      http.Response response = await http.get(uri);
      var result = convert.jsonDecode(response.body);
      print(result['title']);
    }

    getData();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('User Profile',),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          color: Color(0xFFEEEEEE),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 140,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 20),
                              child: CircleAvatar(
                                backgroundColor: Colors.white54,
                                radius: 30,
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage("assets/profile.jpg"),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Usman Tijani Eneye',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    'Web Developer',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: SemiText(),
                        ),
                      ],
                    ),
                  ),
                ),
                //  Outer layer
                Container(
                  margin: EdgeInsets.all(5),
                  child: Column(

                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.grey[100],
                                  radius: 20,
                                  child: Icon(
                                    Icons.attach_money,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text('Wallet'),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.grey[100],
                                  radius: 20,
                                  child: Icon(
                                    Icons.card_giftcard_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text('Delivery'),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.grey[100],
                                  radius: 20,
                                  child: Icon(
                                    Icons.message,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text('Message'),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.grey[100],
                                  radius: 20,
                                  child: Icon(
                                    Icons.miscellaneous_services,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text('Service'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(

                        child: Card(
                            elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Column(
                            // mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.purple,
                                  radius: 20,
                                  child: Icon(
                                    Icons.add_location_alt_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                title: Text(
                                  'Address',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                subtitle:
                                    Text('Ensure your harvesting address'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(

                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.pink,
                                  radius: 20,
                                  child: Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                  ),
                                ),
                                title: Text(
                                  'Privacy',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                subtitle:
                                Text('System Permission change'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(

                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  child: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  ),
                                ),
                                title: Text(
                                  'General',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                subtitle:
                                Text('Basic functional settings'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(

                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Column(

                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.lightBlueAccent,
                                  radius: 20,
                                  child: Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  ),
                                ),
                                title: Text(
                                  'Notification',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                subtitle:
                                Text('Take over the news in time'),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
