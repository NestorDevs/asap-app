import 'package:flutter/material.dart';

class CustomPaddingText extends StatelessWidget {
  const CustomPaddingText({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 18, letterSpacing: 1.5),
      ),
    );
  }
}
