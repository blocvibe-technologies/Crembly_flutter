

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextCumField extends StatelessWidget {
  const TextCumField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Hint Text',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 8), // Add some space between hint text and text field
        Container(
          width: 200, // Set width of text field
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey), // Border color
            borderRadius: BorderRadius.circular(8.0), // Border radius
          ),
          child: const TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 8), // Adjust content padding
              border: InputBorder.none, // Remove border
              hintText: 'kjgutyiuyo', // No need for hintText since we have the hint text above
            ),
          ),
        ),
      ],
    );
  }
}
