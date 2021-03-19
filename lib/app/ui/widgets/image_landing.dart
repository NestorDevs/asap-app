import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      child: SvgPicture.asset('assets/deliv.svg'),
    );
  }
}
