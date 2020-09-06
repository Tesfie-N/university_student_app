

import 'package:flutter/material.dart';

class StudentID extends StatefulWidget {
  @override
  _StudentIDState createState() => _StudentIDState();
}

class _StudentIDState extends State<StudentID> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[300],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('STUDENT ID'),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/adigratlogo.jpg'),
                  radius: 30.0,
                ),
                SizedBox(width: 12.0),
                Text(
                  'ADIGRAT UNIVERSITY',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),

            Divider(
              color: Colors.grey[300],
              height: 50.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/tesfie.jpg'),
                radius: 40.0,
              ),
            ),
            SizedBox(height: 15.0),
            Text(
                'FULL NAME',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.0,
                    fontSize: 12
                )
            ),
            SizedBox(height: 6.0),
            Text(
                'Tesfabrhan Naizghi Mael',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.0,
                    fontSize: 16
                )
            ),
            SizedBox(height: 15.0),
            Text(
                'DEPARTMENT',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.0,
                    fontSize: 12
                )
            ),
            SizedBox(height: 6.0),
            Text(
                'Electrical and Computer Engineering',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.0,
                    fontSize: 16
                )
            ),
            SizedBox(height: 15.0),
            Text(
                'COLLEGE',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.0,
                    fontSize: 12
                )
            ),
            SizedBox(height: 6.0),
            Text(
                'College of Engineering and Technology',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.0,
                    fontSize: 16
                )
            ),
            SizedBox(height: 30.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'See Grade',
                  style: TextStyle(
                    color: Colors.grey[200],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
                SizedBox(width: 7.0),
                RaisedButton(
                  color: Colors.grey[400],
                  child: Icon(Icons.arrow_forward,
                    color: Colors.grey[200],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/yearspage');
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

