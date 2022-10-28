import 'package:flutter/material.dart';
import 'package:painter/screens/first.page.dart';
import 'package:painter/screens/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  SecondPage(),
    );
  }
}
