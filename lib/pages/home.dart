import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black45,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      hintText: 'Business Trip Number'),
                )
              ],
            )),
      ),
    );
  }
}

