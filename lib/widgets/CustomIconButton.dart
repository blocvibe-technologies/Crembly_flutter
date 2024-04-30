
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomIconTextButton extends StatelessWidget {
  final Function()? onpressed;
  final Color? color;
  final Widget sufixIcon ;
  final String text;
  final Color ? borderColor;
  const CustomIconTextButton({super.key, this.onpressed, this.color, required this.sufixIcon, required this.text, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed: onpressed,

      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7), // Set border radius
            side:  BorderSide(color: borderColor?? Colors.yellow), // Set border color
          ),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(color??Colors.black), // Text color
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent), // No overlay color
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(9)),
        // No padding
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [

          sufixIcon,
          SizedBox(width: 8.0), // Adjust spacing between icon and text
          Expanded(child: Text(text,textAlign: TextAlign.center,)),
        ],
      ),
    );;
  }
}
