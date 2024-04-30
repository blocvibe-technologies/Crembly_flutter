import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tmdp_cashback_flutter/utils/routes/app_routes.dart';

import '../../../utils/AppColors.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _logoSize = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      setState(() {
        _logoSize = 200; // New size of the logo after 2 seconds
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    // Hide the status bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    // Simulate some delay for splash screen
    Future.delayed(Duration(seconds: 3), () {
      if (context != null) { // Check if context is available
        Get.offAllNamed(AppRoute.login_rejister);
      }
      // Show the status bar when the splash screen is disposed
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    });

    return Scaffold(
      backgroundColor: AppColors.primaryColor, // Background color for splash screen
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: _logoSize,
          height: _logoSize,
          child: Center(child: SvgPicture.asset(

            'assets/crembly_logo.svg',
            semanticsLabel: 'satta_logo',
            // Other properties like width, height, color, etc. can be adjusted here
          )),
        ),
      ),
    );
  }
}
