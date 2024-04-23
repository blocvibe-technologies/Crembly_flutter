

import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:tmdp_cashback_flutter/screens/home/home_screen.dart';
import 'package:tmdp_cashback_flutter/screens/on_boarding/login/complete_rejistration.dart';
import 'package:tmdp_cashback_flutter/screens/on_boarding/login/login_rejister_screen.dart';

import '../../screens/bottom_navigation_bar/AppBottomNavigationBar.dart';
import '../../screens/home/travel_booking_detail.dart';
import '../../screens/on_boarding/splash_screen/SplashScreen.dart';



class AppRoute{

  final providers = [
    // ChangeNotifierProvider(create: create)<SharedPreferencesController>(create: (_) => SharedPreferencesController()),
    // ChangeNotifierProvider<AddMonthlyReportController>(create: (_) => AddMonthlyReportController()),
  ];

  final routes = [
    // GetPage(name: MyRoute.home, page: () => HomeScreen()),
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: login_rejister, page: () =>  LoginRejisterScreen()),
    GetPage(name: complete_registration, page: () =>  CompleteRejistrationScreen()),
    GetPage(name: bottom_nav_bar, page: () =>  const AppBottomNavigationBar()),
    GetPage(name: home, page: () =>  HomeScreen()),
    GetPage(name: travel_booking_detail, page: () => const TravelBookingDetailScreen()),


    // GetPage(name: MyRoute.under_development, page: () => const ErrorScreen()),
  ];




  static const String splash = '/splash';
  static const String home = '/';
  static const String login_rejister = '/login_rejister';
  static const String bottom_nav_bar = '/bottom_nav_bar';
  static const String travel_booking_detail = '/travel_booking_detail';
  static const String complete_registration = '/complete_registration';
  static const String signUp = '/sign_up';
  static const String privacy = '/privacy';
  static const String terms = '/terms';
  static const String add_report_bottom_nav = '/add_report_bottom_nav';
  static const String view_report_bottom_nav = '/view_report_bottom_nav';
  static const String forgot_password = '/forgot_password';
  static const String add_daily_report = '/add_daily_report';
  static const String add_monthly_report = '/add_monthly_report';
  static const String daily_report_details = '/daily_report_details';
  static const String monthly_report_details = '/monthly_report_details';
  static const String settings = '/settings';
  static const String result_monthly = '/result_monthly';
  static const String add_report_result_monthly = '/add_report_result_monthly';
  static const String result_weekly = '/result_weekly';
  static const String add_report_result_weekly = '/add_report_result_weekly';
  static const String monthly_graph = '/monthly_graph';
  static const String weekly_graph = '/weekly_graph';
  static const String profile = '/profile';
  static const String edit_profile = '/edit_profile';
  static const String about_us = '/about_us';
  static const String contact_us = '/contact_us';
  static const String line_chart = '/line_chart';
  static const String add_report_business_unit_bnb = '/add_report_business_unit_bnb';

  static const String under_development = '/under_development';
  static const String plant_location_screen1 = '/plant_location_screen1';
  static const String business_unit_screen = '/business_unit_screen';
  static const String add_plant_location_screen = '/add_plant_location_screen';
  static const String add_business_unit_screen = '/add_business_unit_screen';



  // static const String homeRouteName = 'home';



}