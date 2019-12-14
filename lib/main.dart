import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget _buildCard({
    @required IconData icon,
    @required String text,
  }) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 25.0,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.teal,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.teal[900],
            ),
          ),
        ],
      ),
    );
  }

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
            _buildCard(icon: Icons.phone, text: '+44 123 456 789'),
            _buildCard(icon: Icons.email, text: 'myemail@gmail.com')
          ],
        )),
      ),
    );
  }
}
