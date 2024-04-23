import 'package:flutter/material.dart';

class TextBoxButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const TextBoxButton({
    Key? key,
    this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), // Adjust the value as needed
          border: Border.all(
            color: Colors.grey, // Add border color if needed
            width: 1, // Add border width if needed
          ),
        ),
        height: 48,
        width: MediaQuery.of(context).size.width,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          text,
        ),
      ),
    );
  }
}
