import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tmdp_cashback_flutter/utils/routes/app_routes.dart';

import '../../../utils/AppColors.dart';


class SplashScreen extends StatelessWidget {
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
        child: Center(child: SvgPicture.asset(

          'assets/crembly_logo.svg',
          semanticsLabel: 'satta_logo',
          // Other properties like width, height, color, etc. can be adjusted here
        )),
      ),
    );
  }
}
