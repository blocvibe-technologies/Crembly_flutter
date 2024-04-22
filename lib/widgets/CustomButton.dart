

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {

   final Function ()? onPressed ;
   final String btnText ;
   final Color? color;
    const CustomButton({
    super.key,
    required this.btnText,
    this.onPressed,
    this.color
    });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(


      style: ButtonStyle(

        backgroundColor: MaterialStateProperty.all<Color>(
          widget.color ?? Colors.black, // Use widget.color if not null, otherwise use Colors.black
        ),
        // padding: MaterialStateProperty.all<EdgeInsets>(
        //   EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        // ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      onPressed: widget.onPressed??(){},
      child:  Text( widget.btnText,   style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),),

    );
  }
}
