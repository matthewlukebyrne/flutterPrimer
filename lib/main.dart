import 'package:flutter/material.dart';

// Matthew Byrne
// x17138744
// Mobile Application Development Project
// Flutter - Demo

// Replaced with material app as root widget
// the stateless widget created is then passed into the home property
void main() => runApp(MaterialApp(
      home: ProfileCard(),
    ));

// Create a stateless widget
class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Profile Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        // Child of the body
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // sets the column to left
          // Child of the column
          children: <Widget>[
            // array of widgets
            Center(
              child: CircleAvatar( // circle avatar widget
                backgroundImage: AssetImage('assets/lisa.jpg'),
                radius: 50.0,
              ),
            ),
            Divider( // adds a divider line
              height: 90.0,
              color: Colors.grey[800],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0), // added spaced between elements
            Text(
              "Lisa Burke",
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "Current Profile Level",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0), // added spaced between elements
            Text(
              "8",
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 30.0), // width for the icon and email spacing
                Text(
                  "lisa@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
