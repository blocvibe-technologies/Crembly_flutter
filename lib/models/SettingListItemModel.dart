
import 'package:flutter/cupertino.dart';

class SettingListItemModel {
  final String asset;
  final String text;
  final bool ? needVerification;
  final bool ? isVerified ;

  SettingListItemModel( {
    required this.asset,
    required this.text,
    this.needVerification = false,
    this.isVerified,
  });


}


