
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool _isUniversityId = false;
  TextEditingController _editingControllerUnId;
  String universityID = "Enter University ID";

  String privateCode = "Enter private code";
  bool _isPrivateCode = false;
  TextEditingController _editingControllerPrCode;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Colors.cyan[700],
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 150, 50, 0),
        child: Center(
          child: Column(
            children: [
              _editEmail(),
              SizedBox(height: 10),
              _editPassword(),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () {Navigator.pushNamed(context, '/id');
                },
                child: Text('Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),),
                color: Colors.cyan[900],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _editingControllerUnId = TextEditingController(text: universityID);
    _editingControllerPrCode= TextEditingController(text: privateCode);
  }

  @override
  void dispose() {
    _editingControllerUnId.dispose();
    _editingControllerPrCode.dispose();
    super.dispose();
  }

  Widget _editEmail() {
    if (_isUniversityId)
      return Center(
        child: TextField(
          onSubmitted: (newValue){
            setState(() {
              universityID = newValue;
              _isUniversityId =false;
            });
          },
          autofocus: true,
          controller: _editingControllerUnId,
        ),
      );
    return InkWell(
        onTap: () {
          setState(() {
            _isUniversityId = true;
          });
        },
        child: Text(
          universityID,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
        )
    );
  }

  Widget _editPassword() {
    if (_isPrivateCode)
      return Center(
        child: TextField(
          onSubmitted: (newValue){
            setState(() {
              privateCode = newValue;
              _isPrivateCode =false;
            });
          },
          autofocus: true,
          controller: _editingControllerPrCode,
        ),
      );
    return InkWell(
        onTap: () {
          setState(() {
            _isPrivateCode = true;
          });
        },
        child: Text(
          privateCode,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
        )
    );
  }
}
