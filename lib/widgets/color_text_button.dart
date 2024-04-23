import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorTextBotton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;

  const ColorTextBotton({
    super.key,
    required this.text,
    required this.color,
    required this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
      alignment: Alignment.center,
      decoration:  BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7), // Adjust the value as needed
        // border: Border.all(
        //   color: Colors.grey, // Add border color if needed
        //   width: 1, // Add border width if needed
        // ),
      ),
      child: Text(
      text,
      style:  TextStyle(
      fontSize: 10.4,
        fontWeight: FontWeight.w500,
          color: textColor
    ),),
    );
  }
}
