import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class StudentID extends StatefulWidget {
  @override
  _StudentIDState createState() => _StudentIDState();
}

class _StudentIDState extends State<StudentID> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red[300],
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('STUDENT ID'),
          centerTitle: true,
        ),
        body: Container(
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
              _buildText(text: 'Full name', sizedBoxHeight: 15),
              _buildText(text: 'Tesfabrhan Naizghi Mael', sizedBoxHeight: 6),
              _buildText(text: 'DEPARTMENT', sizedBoxHeight: 15),
              _buildText(
                  text: 'Electrical and Computer Engineering',
                  sizedBoxHeight: 6),
              _buildText(text: 'COLLEGE', sizedBoxHeight: 15),
              SizedBox(height: 36.0),
              Align(
                alignment: Alignment.bottomRight,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "see grade ",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondScreen()))),
                      TextSpan(
                          text: "see dialog ",
                          style: TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: Text('I am dialog'),
                                    content: Text('hello kabbe'),
                                    actions: [
                                      IconButton(
                                          icon: Icon(Icons.cancel),
                                          onPressed: () =>
                                              Navigator.of(context).pop()),
                                      IconButton(
                                          icon: Icon(Icons.confirmation_num),
                                          onPressed: () {
                                            // TODO:
                                          })
                                    ],
                                  ),
                                )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // @required reminds us to pass argument on compilation time
  Column _buildText({@required String text, double sizedBoxHeight = 6}) {
    return Column(
      children: [
        SizedBox(height: sizedBoxHeight),
        Text(text,
            style: TextStyle(
                color: Colors.black, letterSpacing: 1.0, fontSize: 12)),
      ],
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Did u say grade i am great')));
  }
}
