
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String titleText;
  final String hintText;
  const AppTextField({super.key, required this.titleText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Adjust the value as needed
        border: Border.all(
          color: Colors.grey, // Add border color if needed
          width: 1, // Add border width if needed
        ),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(titleText),
          // SizedBox(height: 5,),
           TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              isDense: true,
              hintText: hintText,
            ),
          ),
        ],
      ),
    );
  }
}
