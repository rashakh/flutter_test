/* This is just a test project, an activity to get started with flutter*/

import 'package:flutter/material.dart';

import 'src/screens/menu_screen.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Firstpage(),
      routes: <String, WidgetBuilder>{
        'src/screens/menu_screen.dart': (BuildContext context) => MenuScreen()
      },
    );
  }
} // root widget

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar:
          AppBar(title: Text('Home'), backgroundColor: Colors.redAccent),
      body: Column(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                Image.asset('assets/flutter.jpg'),
                Text(
                    '\n\nThis is test App \nMade using Dart language and Flutter')
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(17.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed('src/screens/menu_screen.dart');
                    },
                    iconSize: 80.0,
                  ),
                  Text('Go to Menu Page')
                ],
              ),
            ),
          )
        ],
      ),
    );
  } // Firs tpage builde
} // first page widget
