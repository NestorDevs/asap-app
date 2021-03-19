import 'package:flutter/material.dart';

class ColumnButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          primary: Theme.of(context).primaryColor,
        ),
        onPressed: () {},
        child: const Text('Accepted'),
      ),
      OutlineButton(
        borderSide: const BorderSide(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        textColor: Colors.grey,
        onPressed: () {},
        child: const Text('Paid'),
      ),
    ]);
  }
}
