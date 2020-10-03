import 'package:flutter/material.dart';

// Matthew Byrne
// x17138744
// Mobile Application Development Project
// Flutter - Demo

// Passing through Google Material Designs to be allowed use in the application
// Passing the Home class to run the application
void main() => runApp(MaterialApp(
  home: Home(),
));

// Stateless Widgets - the state of the widget can not change over time
// Stateful widgets - the state of the widget can change over time

// Hot reloading and Stateless Widgets in Flutter
// Custom stateless widget snippet
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dart Primer / Flutter'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(50.0, 50.0, 60.0, 10.0),
        margin: EdgeInsets.all(50.0),
        color: Colors.amber[600],
        child: Text('Hello'),
      ),
    );
  }
}

