import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BasicProject(),
  ));
} //material app

class BasicProject extends StatelessWidget{
      @override
  Widget build(BuildContext context){
        return Scaffold(
          backgroundColor: Colors.grey [850],
          appBar: AppBar(
            title: Text('Basic project card'),
            centerTitle: true,
            backgroundColor:  Colors.grey,
            elevation: 0.0,
          ), //AppBar
        );//Scaffolf that allows us to make a layout like appbar and body ...
  }
}
