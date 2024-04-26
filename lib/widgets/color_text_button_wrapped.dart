
import 'dart:ui';

import 'package:flutter/cupertino.dart';

class ColorTextButton extends StatelessWidget {
  final String text;
  final Color bgcolor;
  final Color textColor;
  final double borderRadius;

  const ColorTextButton({
    required this.text,
    required this.bgcolor,
    required this.textColor,
    this.borderRadius = 8.0, // Default border radius value
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadius.circular(borderRadius), // Apply border radius
          ),
          padding: EdgeInsets.all(8), // Adjust padding as needed
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 10),
          ),
        ),
      ],
    );
  }
}
