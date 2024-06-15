import 'package:flutter/material.dart';
import 'package:skill_match/filter.dart';
import 'package:skill_match/login.dart';
import 'package:skill_match/register1.dart';
import 'firstpage.dart';
import 'home2.dart';



void main() {


  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: skillMatch(),
      routes: {
        'first' :(context) =>skillMatch(),
        'login' :(context) =>Mylogin(),
        'Registration1' :(context) =>Myregister(),
        'filter' :(context) =>Myfilter(),
        'home2' :(context) =>MyhomeTwo(),


      }
  )
  );


}




