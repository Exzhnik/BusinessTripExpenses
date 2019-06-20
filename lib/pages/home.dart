import 'package:business_trip_expenses/pages/inputFields/abode.dart';
import 'package:business_trip_expenses/pages/inputFields/businessTripNumber.dart';
import 'package:business_trip_expenses/pages/inputFields/dailyAllowance.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  List<DateTime> startDate = List();

  Future<Null> _selectDate(BuildContext context) async {
    final List<DateTime> picked = await DateRagePicker.showDatePicker(
      context: context,
      initialFirstDate: new DateTime.now(),
      initialLastDate: (new DateTime.now()).add(new Duration(days: 7)),
      firstDate: new DateTime(2015),
      lastDate: new DateTime(2020),
    );

    if (picked != null && picked.length == 2)
      setState(() {
        startDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counting Finance'),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .03,
                  right: 20.0,
                  left: 20.0),
          
          child: Container(
            
            child: Column(
              children: <Widget>[
                new BusinessTripNumber(),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                  onPressed: () => _selectDate(context),
                  child: Text('Select Date'),
                ),
                Text("${startDate.join()}"),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Flexible(child: new DailyAllowance()),
                    SizedBox(width:  MediaQuery.of(context).size.height * .03),
                    Flexible(
                      child: new Abode(),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
