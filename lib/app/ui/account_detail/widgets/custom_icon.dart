import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Icon(
          Icons.edit,
          size: 25,
          color: Colors.white,
        ));
  }
}
