import 'package:flutter/material.dart';

class Abode extends StatelessWidget {
  const Abode({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black45,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          hintText: 'Money For Accommodation'),
    );
  }
}
