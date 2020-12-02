import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text("Mohammadia school of Engineers-"),
            Text("News",style: TextStyle(
                color: Colors.white
            ),)
          ],
        ),
        elevation: 0.0,
      ),
    );

  }
}
