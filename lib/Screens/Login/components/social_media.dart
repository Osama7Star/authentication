import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SoicalMeida extends StatelessWidget {
  final String icon;

  const SoicalMeida({Key key, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,

        ),

        child: SvgPicture.asset(icon),
      ),
    );
  }
}
