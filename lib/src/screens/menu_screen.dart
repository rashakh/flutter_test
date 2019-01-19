import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import '../../main.dart';
import 'profile_screen.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Random(),
      routes: <String, WidgetBuilder>{
        '../../main.dart': (BuildContext context) => MyFirstApp()
      },
    );
  }
} // menu screen widget

class Random extends StatefulWidget {
  @override
  _RandomState createState() => _RandomState();
}

class _RandomState extends State<Random> {
  final List<WordPair> _suggest = <WordPair>[];
  final TextStyle _bigFont = const TextStyle(fontSize: 17.0);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:
          AppBar(title: Text('Menu'), backgroundColor: Colors.redAccent),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.redAccent,
            ),
            Container(
              margin: EdgeInsets.all(17.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.home,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('../../main.dart');
                      },
                      iconSize: 80.0,
                    ),
                    Text('Home')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: _bulidSuggest(),
    );
  }

// this Widget can be moving in other file for reuse
  Widget _bulidSuggest() {
    return ListView.builder(
      padding: const EdgeInsets.all(17.0),
      itemBuilder: (BuildContext _contex, int i) {
        if (i.isOdd) {
          return Divider();
        }
        final int index = i ~/ 2;
        if (index >= _suggest.length) {
          _suggest.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggest[index]);
      },
    );
  } // _bulidSuggest Widget

// this Widget can be moving in other file for reuse
  Widget _buildRow(WordPair pair) {
    return ListTile(
      trailing: Icon(
        Icons.favorite,
        color: Colors.red,
      ),
      leading: CircleAvatar(
        child: Text(
          pair.toString().substring(0, 1),
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ),
      title: Text(
        pair.asPascalCase,
        style: _bigFont,
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext conext) => ProfileScreen(pair)));
      },
    );
  } //_buildRow Widget
} // _RandomState class
