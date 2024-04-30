
import 'package:flutter/cupertino.dart';
import 'package:tmdp_cashback_flutter/models/enums/status_enum.dart';

class BookingTransactionItemModel {

  final String transactionId;
  final String transactionTitle;
  final Status ? status ;
  final Color textColor;
  final Color boxColor;

  BookingTransactionItemModel( {
    required this.transactionId,
    required this.transactionTitle,
    this.status = Status.pending,
    required this.textColor,
    required this.boxColor,
   });

  String getStatusText() {
    switch (status) {
      case Status.verified:
        return 'Verified';
      case Status.notVerified:
        return 'Not Verified';
      case Status.pending:
        return 'Pending';
      case Status.completed:
        return 'Completed';
      case Status.canceled:
        return 'Canceled';
      default:
        return 'Unknown';
    }
  }

}