
import 'package:flutter/cupertino.dart';

class SettingListItemModel {
  final IconData icon;
  final String text;
  final bool ? needVerification;
  final bool ? isVerified ;

  SettingListItemModel( {
    required this.icon,
    required this.text,
    this.needVerification = false,
    this.isVerified,
  });
}

