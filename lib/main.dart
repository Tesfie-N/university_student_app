import 'package:flutter/material.dart';
import 'package:university_student_app/pages/login.dart';
import 'package:university_student_app/pages/student_id.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/login',
      routes: {
        '/id': (contex) => StudentID(),
        '/login': (context) => Login(),
      },
    ));
