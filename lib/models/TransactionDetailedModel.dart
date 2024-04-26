
import 'package:flutter/cupertino.dart';

class TransactionDetailedModel {
  final IconData icon;
  final String text;
  final String detailsText;
  final bool ? needVerification;
  final bool ? isVerified ;

  TransactionDetailedModel({
    required this.icon,
    required this.text,
    required this.detailsText,
    this.needVerification = false,
    this.isVerified = false,
  });
}



