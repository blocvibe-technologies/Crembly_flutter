
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdp_cashback_flutter/utils/app_functions/AppFunctions.dart';

class CustomTextField1 extends StatelessWidget {
  final String hint;
  final String titleText ;
  const CustomTextField1({super.key, required this.hint, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titleText,style: TextStyle(
            fontSize: 11,
            color: AppFunctions.hexToColor("#6D6D6D")

          ),),
          TextField(
            textAlignVertical: TextAlignVertical.center,

            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              isDense: true,
              hintText: hint,
            ),
          ),
        ],
      ),
    );
  }
}
