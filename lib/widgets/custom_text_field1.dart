import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdp_cashback_flutter/utils/app_functions/AppFunctions.dart';

class CustomTextField1 extends StatelessWidget {
  final String hint;
  final String titleText;
  final bool needText;
  final TextEditingController? controller;

  const CustomTextField1({
    Key? key, // Use Key type for the key parameter
    required this.hint,
    required this.titleText,
    this.needText = false,
    this.controller,
  }) : super(key: key); // Pass the key to super constructor

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            titleText,
            style: TextStyle(
              fontSize: 11,
              color: AppFunctions.hexToColor("#6D6D6D"),
            ),
          ),
          Row(
            children: [
              needText
                  ? Text(
                hint,
                style: const TextStyle(
                  fontSize: 14.3,
                  color: Colors.black,
                ),
              )
                  : Expanded(
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  controller: controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                    isDense: true,
                    hintText: hint,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
