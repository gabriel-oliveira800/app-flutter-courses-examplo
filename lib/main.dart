import 'package:coursesApp/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Demo App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.pink[300],
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
