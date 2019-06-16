import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final formats = {
    InputType.both: DateFormat("d MMMM, yyyy "),
    InputType.date: DateFormat('dd-MM-yyyy'),
  };

  void updateInputType({bool date}) {
    setState(() => inputType =
        date ? InputType.both : InputType.date);
  }

  InputType inputType = InputType.both;
  bool editable = true;
  DateTime date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black45,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      hintText: 'Business Trip Number'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                DateTimePickerFormField(
                  inputType: inputType,
                  format: formats[inputType],
                  editable: editable,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black45,
                      labelText: 'Start Date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      hasFloatingPlaceholder: false),
                  onChanged: (dt) => setState(() => date = dt),
                ),
                SizedBox(
                  height: 10.0,
                ),
                DateTimePickerFormField(
                  inputType: inputType,
                  format: formats[inputType],
                  editable: editable,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black45,
                      labelText: 'End Date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      hasFloatingPlaceholder: false),
                  onChanged: (dt) => setState(() => date = dt),
                ),
              ],
            )),
      ),
    );
  }
}
