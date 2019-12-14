import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                'https://avatars1.githubusercontent.com/u/47613084?s=460&v=4',
              ),
            ),
            Text(
              'Eliseu Videira',
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Permanent Marker',
                color: Colors.white,
              ),
            ),
            Text(
              'Flutter Developer'.toUpperCase(),
              style: TextStyle(
                color: Colors.teal[100],
                letterSpacing: 4.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'Source Sans Pro',
              ),
            ),
          ],
        )),
      ),
    );
  }
}
