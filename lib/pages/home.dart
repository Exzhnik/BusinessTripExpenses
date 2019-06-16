import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
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
                
                MaterialButton(
                  
                  color: Colors.cyan,
                  onPressed: () async {
                    final List<DateTime> picked =
                        await DateRagePicker.showDatePicker(
                            context: context,
                            initialFirstDate: new DateTime.now(),
                            initialLastDate:
                                (new DateTime.now()).add(new Duration(days: 7)),
                            firstDate: new DateTime(2015),
                            lastDate: new DateTime(2020));
                    if (picked != null && picked.length == 2) {
                      print(picked);
                    }
                  },
                  child: Text('Pick date range'),
                ),
                Text('test'),
              ],
            )),
      ),
    );
  }
}
