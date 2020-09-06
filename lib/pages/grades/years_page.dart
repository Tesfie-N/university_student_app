
import 'package:flutter/material.dart';

class YearsPage extends StatefulWidget {
  @override
  _YearsPageState createState() => _YearsPageState();
}

class _YearsPageState extends State<YearsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Semester in each Year '),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(

                children: [
                  Text('Year One',),
                  SizedBox(height:6),
                  FlatButton(
                    color: Colors.black38,
                  child: Text('Semester One',),
                  onPressed: () {Navigator.pushNamed(context, '/firstyearfirstsemester');},
                ),
                  SizedBox(height:6),
                  FlatButton(
                    color: Colors.black38,
                    child: Text('Semester Two',),
                    onPressed: () {Navigator.pushNamed(context, '/firstyearsecondsemester');},
                  ),

                  SizedBox(height: 15),

                  Text('Year Two',),
                  SizedBox(height:6),
                  FlatButton(
                    color: Colors.black38,
                    child: Text('Semester One',),
                    onPressed: () {Navigator.pushNamed(context, '/secondyearfirstsemester');},
                  ),
                  SizedBox(height:6),
                  FlatButton(
                    color: Colors.black38,
                    child: Text('Semester Two',),
                    onPressed: () {Navigator.pushNamed(context, '/secondyearsecondsemester');},
                  ),

                  SizedBox(height: 15),

                  Text('Year Three',),
                  SizedBox(height:6),
                  FlatButton(
                    color: Colors.black38,
                    child: Text('Semester One',),
                    onPressed: () {Navigator.pushNamed(context, '/thirdyearfirstsemester');},
                  ),
                  SizedBox(height:6),
                  FlatButton(
                    color: Colors.black38,
                    child: Text('Semester Two',),
                    onPressed: () {Navigator.pushNamed(context, '/thirdyearsecondsemester');},
                  ),
                ],
             )
          ]
          ),
        ),
      ),
    );
  }
}
