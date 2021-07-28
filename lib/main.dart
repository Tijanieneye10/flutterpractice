import 'package:flutter/material.dart';
import 'package:layout/practice.dart';
import 'package:layout/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Page',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      // home: SignIn()
        home: Practice()
    );
  }
}

