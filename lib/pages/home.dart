import 'package:business_trip_expenses/pages/inputFields/abode.dart';
import 'package:business_trip_expenses/pages/inputFields/businessTripNumber.dart';
import 'package:business_trip_expenses/pages/inputFields/dailyAllowance.dart';
import 'package:business_trip_expenses/pages/inputFields/earnings.dart';
import 'package:business_trip_expenses/pages/inputFields/listedMoney.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  var _message = "";

  Future<String> _promptForString(String label, {String hintText}) {
    final TextEditingController controller = new TextEditingController();
    return showDialog(
      context: context,
      child: new AlertDialog(
        title: new Text(label),
        content: new TextFormField(
          keyboardType: TextInputType.number,
          controller: controller,
          decoration: new InputDecoration(hintText: hintText),
        ),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CANCEL'),
          ),
          new FlatButton(
            onPressed: () => Navigator.pop(context, controller.text),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

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
      body: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                  SizedBox(width: MediaQuery.of(context).size.height * .03),
                  Flexible(
                    child: new Abode(),
                  ),
                ],
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: AspectRatio(
                  aspectRatio: 5 / 2,
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(_message),
                        IconButton(
                          
                          icon: Icon(Icons.add),
                          onPressed: () async {
                            String message = await _promptForString('New text',
                                hintText: 'Try emoji!');
                            if (!mounted) return;
                            setState(() {
                              _message = message;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Flexible(child: new ListedMoney()),
                  SizedBox(width: MediaQuery.of(context).size.height * .03),
                  Flexible(
                    child: new Earnings(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// floatingActionButton: new FloatingActionButton(
// child: new Icon(Icons.edit),
// onPressed: () async {
//   String message = await _promptForString('New text', hintText: 'Try emoji!');
//   if (!mounted)
//     return;
//   setState(() {
//     _message = message;
//   });
// },
//       ),
