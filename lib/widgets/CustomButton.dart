

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdp_cashback_flutter/utils/app_functions/AppFunctions.dart';

class CustomButton extends StatefulWidget {

   final Function ()? onPressed ;
   final String btnText ;
   final Color? color;
   final Color? textColor;
   final double? fontSize;
   final FontWeight ? font_weight;
    const CustomButton({
    super.key,
    required this.btnText,
    this.onPressed,
    this.color,
      this.textColor,
      this.fontSize,
      this.font_weight = FontWeight.w400
    });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width:MediaQuery.of(context).size.width,
      child: TextButton(


        style: ButtonStyle(

          backgroundColor: MaterialStateProperty.all<Color>(
            widget.color ?? Colors.black, // Use widget.color if not null, otherwise use Colors.black
          ),
          // padding: MaterialStateProperty.all<EdgeInsets>(
          //   EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          // ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
        onPressed: widget.onPressed??(){},
        child:  Text( widget.btnText,
          style: TextStyle(
          fontSize: widget.fontSize??18,
          fontWeight: widget.font_weight,
          color: widget.textColor??Colors.white,
            fontFamily: "Inter"
        ),),

      ),
    );
  }
}
