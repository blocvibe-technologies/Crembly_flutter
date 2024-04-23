
import 'package:flutter/material.dart';

class UnderlinedText extends StatelessWidget {

  final String data;
  final List<String> wordsToUnderline ;
  const UnderlinedText({
    required this.data,
    required this.wordsToUnderline
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.black,
          fontWeight: FontWeight.w500
        ),
        children: _buildTextSpans(data),
      ),
    );
  }

  List<TextSpan> _buildTextSpans(String text) {
    final List<TextSpan> spans = [];


    for (final String word in text.split(' ')) {
      if (wordsToUnderline.contains(word)) {
        spans.add(
          TextSpan(
            text: '$word ',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.blue, // Change color as needed
            ),
          ),
        );
      } else {
        spans.add(
          TextSpan(
            text: '$word ',
          ),
        );
      }
    }

    return spans;
  }
}
