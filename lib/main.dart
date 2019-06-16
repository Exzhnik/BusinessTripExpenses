import 'package:business_trip_expenses/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark
      ),
      title: 'Business Trip Expenses',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

