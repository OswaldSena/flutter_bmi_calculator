import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  final Color? colour; // Make colour nullable to allow default value
  final Widget? cardChild;
  final void Function()? onPress;

  const ReUsableCard({@required this.colour, this.cardChild, this.onPress,});// Use const constructor for immutability

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour ?? Color(0xFF1D1E33), // Use null-ish coalescing operator (??)
        ),
      ),
    );
  }
}










