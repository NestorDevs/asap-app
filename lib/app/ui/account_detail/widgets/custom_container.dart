import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key key,
    this.width,
    @required this.height,
    @required this.child,
  }) : super(key: key);

  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 7,
        height: height,
        child: child,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
