import 'package:flutter/material.dart';

class ListedMoney extends StatelessWidget {
  const ListedMoney({
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
          hintText: 'Listed Money'),
    );
  }
}
