
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdp_cashback_flutter/utils/app_functions/AppFunctions.dart';

class CustomTextField2 extends StatelessWidget {
  final String hint;
  // final String titleText ;
  const CustomTextField2({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,

        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
          isDense: true,
          hintText: hint,
        ),
      ),
    );
  }
}
