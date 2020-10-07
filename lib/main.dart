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

// Create a stateless widget (and now converted to a stateful one!)
class ProfileCard extends StatefulWidget {
  @override
  // returning a instance of the state
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {

  // Set number to 0 (loading state)
  int numberLevel = 0;

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
      floatingActionButton: FloatingActionButton(
        // Inside a counter press... setting the state of a element to change the value
        onPressed: () {
          setState(() {
            // Every time set state is called the build is trigger to the new state
            return numberLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
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
              '$numberLevel', // represent the int declared at the top of counter
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
            ),
          ],
        ),
      ),
    );
  }
}