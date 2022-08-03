import 'package:flutter/material.dart';
import 'package:flutter_application_4/bmi_Screen.dart';
import 'package:flutter_application_4/bmi_result_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bmi_Screen(),
    );
  }
}

