import 'package:flutter/material.dart';
import 'package:task_app_ui/home.dart';
import 'package:task_app_ui/page1.dart';
import 'package:task_app_ui/page10.dart';
import 'package:task_app_ui/page11.dart';
import 'package:task_app_ui/bottom_nav.dart';
import 'package:task_app_ui/page2.dart';
import 'package:task_app_ui/page3.dart';
import 'package:task_app_ui/page4.dart';
import 'package:task_app_ui/page5.dart';
import 'package:task_app_ui/page6.dart';
import 'package:task_app_ui/page7.dart';
import 'package:task_app_ui/page8.dart';
import 'package:task_app_ui/page9.dart';
import 'package:task_app_ui/profile.dart';
import 'package:task_app_ui/projectdetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
