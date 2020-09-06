import 'package:flutter/material.dart';
import 'package:university_student_app/pages/grades/year_one/year_one_semester_one.dart';
import 'package:university_student_app/pages/grades/year_one/year_one_semester_two.dart';
import 'package:university_student_app/pages/grades/year_three/year_three_semester_one.dart';
import 'package:university_student_app/pages/grades/year_three/year_three_semester_two.dart';
import 'package:university_student_app/pages/grades/year_two/year_two_semester_one.dart';
import 'package:university_student_app/pages/grades/year_two/year_two_semester_two.dart';
import 'package:university_student_app/pages/grades/years_page.dart';
import 'package:university_student_app/pages/login.dart';
import 'package:university_student_app/pages/student_id.dart';

void main()=>runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/firstyearfirstsemester':(context)=> FirstYearFirstSemesterGrade(),
    '/firstyearsecondsemester':(context)=> FirstYearSecondSemesterGrade(),
    '/secondyearfirstsemester':(context)=>  SecondYearFirstSemesterGrade(),
    '/secondyearsecondsemester':(context)=> SecondYearSecondSemesterGrade(),
    '/thirdyearfirstsemester':(context)=> ThirdYearFirstSemesterGrade(),
    '/thirdyearsecondsemester':(context)=> ThirdYearSecondSemesterGrade(),
    '/id':(contex)=>StudentID(),
    '/login':(context)=> Login(),
    '/yearspage':(context)=>YearsPage(),
  },
));

