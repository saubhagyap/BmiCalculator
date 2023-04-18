import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({required this.icon, required this.lable});

  final IconData icon;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 75.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(lable, style: kLableTextStyle),
      ],
    );
  }
}
