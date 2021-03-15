import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _text = TextEditingController();
  bool _isEmptyEmail = false;

  final _password = TextEditingController();
  bool _isEmptyPassword = false;

  @override
  void initState() {
    super.initState();
  }

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
        child: Center(child: Builder(
          builder: (context) {
              return Container(
                child: Column(
                  children: [
                    TextField(
                      controller: _text,
                      decoration: InputDecoration(
                        labelText: 'Enter email',
                        errorText:
                            _isEmptyEmail ? 'email cant\'t be empity' : null,
                        hoverColor: Colors.red[900],
                      ), 
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: _password,
                      decoration: InputDecoration(
                        labelText: 'Enter password',
                        errorText: _isEmptyPassword
                            ? 'pasword cant\'t be empity'
                            : null,
                        hoverColor: Colors.red[900],
                      ),
                    ),
                    SizedBox(height: 10),
                    RaisedButton(
                      onPressed: () {
                        if (_text.text.isEmpty || _password.text.isEmpty) {
                          setState(() {
                            if (_text.text.isEmpty) _isEmptyEmail = true;

                            if (_password.text.isEmpty) _isEmptyPassword = true;
                          });
                        } else
                          Navigator.pushNamed(context, '/id');
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          letterSpacing: 2.0,
                        ),
                      ),
                      color: Colors.cyan[900],
                    ),
                  ],
                ),
              );
          },
        )),
      ),
    );
  }

  @override
  void dispose() {
    _password.dispose();
    _text.dispose();
    super.dispose();
  }
}
