import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:furniture_appui/myColumnImage.dart';
import 'package:furniture_appui/myRowImage.dart';
import 'myTextField.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Color(0xFFFED047),
                  ),
                  Positioned(
                    left: 150,
                    bottom: 100,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Color(0xFFF9DB65).withOpacity(0.7),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60.0,
                    right: 100,
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Color(0xFFF9DB65),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 25),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //SizedBox(width: 15),
                          Container(
                            margin: EdgeInsets.only(left: 15.0),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                                style: BorderStyle.solid,
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/chris.jpg'),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25.0),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            'Hello Pino',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          'What do you want to buy ?',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: 27.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      MyTextField(),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Material(
                    elevation: 2.0,
                    shadowColor: Colors.white,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                      ),
                      height: 75,
                    ),
                  ),
                  Row(
                    children: [
                      MyRowImage('assets/dressers.png', 'dresser'),
                      MyRowImage('assets/wardrobe.png', 'wardrobe'),
                      MyRowImage('assets/sofas.png', 'wardrobe'),
                      MyRowImage('assets/desks.png', 'chair'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 13),
              itemCard('ottoman', 'assets/anotherchair.jpg', true),
              itemCard('ottoman', 'assets/ottoman.jpg', false),
              itemCard('ottoman', 'assets/chair.jpg', false),
              itemCard('ottoman', 'assets/ottoman.jpg', false),
              itemCard('ottoman', 'assets/anotherchair.jpg', false),
            ],
          ),
        ],
      ),
    );
  }
}
