import 'package:flutter/material.dart';

class DailyAllowance extends StatelessWidget {
  const DailyAllowance({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black45,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          hintText: 'Daily Allowance'),
    );
  }
}
