import 'package:flutter/material.dart';

import '../utils/app_constants.dart';

class TextBoxButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Color ? borderColor;

  const TextBoxButton({
    Key? key,
    this.onTap,
    required this.text, this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConstants.default_radius), // Adjust the value as needed
          border: Border.all(
            color: borderColor??Colors.grey, // Add border color if needed
            width: 1, // Add border width if needed
          ),
        ),
        height: 52,
        width: MediaQuery.of(context).size.width,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          text,
        ),
      ),
    );
  }
}
