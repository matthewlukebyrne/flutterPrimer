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
        title: Text('The first Flutter Vibe'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Text(
          'this now hot reloads',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
            fontFamily: 'CourierPrime',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Text('click'),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}

