import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../constants.dart';




class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconContent({
    super.key,
    required this.icon, // Required parameter for icon
    required this.text, // Required parameter for text
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(icon, size: 80.0), // Use received icon
        SizedBox(height: 15.0),
        Text(text, style: kLabelTextStyle,),
      ],
    );
  }
}