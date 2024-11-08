import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BasicProject(),
  ));
}

class BasicProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('Basic project card'),
        centerTitle: true,
        backgroundColor: Colors.grey[500],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/animated.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ), //TextStyle
            ), //Text
            SizedBox(height: 10.0,),//adding space between two widgets
            Text(
              'Fatima',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ), //TextStyle
            ), //Text
            SizedBox(height: 30.0,),
            Text(
              'Your Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ), //TextStyle
            ), //Text
            SizedBox(height: 10.0,),//adding space between two widgets
            Text(
              '7',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ), //TextStyle
            ), //Text
            SizedBox(height: 30.0,),
            Row(
              children: < Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[300]
                ),// Icon
                SizedBox(width: 10.0),
                Text(
                  'fatimabittar0tec@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 18.0,
                    letterSpacing: 1.0
                  ),
                )
              ], //Widget[]
            )//Row
          ], //Widget[]
        ),//Column
      ),//Padding
    ); //Scaffold
  }
}
