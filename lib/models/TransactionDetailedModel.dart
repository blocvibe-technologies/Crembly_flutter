
import 'package:flutter/cupertino.dart';

class TransactionDetailedModel {
  final String asset;
  final String text;
  final String detailsText;
  final bool ? needVerification;
  final bool ? isVerified ;

  TransactionDetailedModel({
    required this.asset,
    required this.text,
    required this.detailsText,
    this.needVerification = false,
    this.isVerified = false,
  });
}



