import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final pair;
  ProfileScreen(this.pair);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Profil'), backgroundColor: Colors.redAccent),
      body: Center(
        child: Text(
          pair.toString(),
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
} // ProfileScreen class
