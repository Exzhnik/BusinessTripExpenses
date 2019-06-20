import 'package:flutter/material.dart';

class BusinessTripNumber extends StatelessWidget {
  const BusinessTripNumber({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black45,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          hintText: 'Business Trip Number'),
    );
  }
}