
import 'package:flutter/material.dart';

class FirstYearSecondSemesterGrade extends StatefulWidget {
  @override
  _FirstYearSecondSemesterGradeState createState() => _FirstYearSecondSemesterGradeState();
}

class _FirstYearSecondSemesterGradeState extends State<FirstYearSecondSemesterGrade> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Semester Two Grade'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [
                  Column(children: [
                    Text('Course Type'),
                  ]),
                  Column(children: [
                    Text('Grade'),
                  ]),
                ]
                ),

                TableRow(children: [
                  Text('Course A'),
                  Text(''),
                ]),

                TableRow(children: [
                  Text('Course B'),
                  Text(''),
                ]),
                TableRow(children: [
                  Text('Course C'),
                  Text(''),
                ]),

                TableRow(children: [
                  Text('Course D'),
                  Text(''),
                ]),

                TableRow(children: [
                  Text('Course E'),
                  Text(''),
                ]),
              ],
            ),
          ),
        ],),
      ),
    );
  }
}
