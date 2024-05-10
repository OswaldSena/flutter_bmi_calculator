import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData ? icon;
  final Color backgroundColor;

  RoundIconButton({
    @required this.onPressed, @required this.icon, this.backgroundColor = const Color(0xFF4C4F5E),
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(icon),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90.0)),
      backgroundColor: backgroundColor,
      onPressed: onPressed,
    );
  }
}