import 'package:flutter/material.dart';

class TravelReport extends StatefulWidget {
    static String tag = 'travel-report';


  @override
  TravelReportState createState() => TravelReportState();
}

class TravelReportState extends State<TravelReport>{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counting Finance'),
      ),
      body: Container(),
    );
  }

}

