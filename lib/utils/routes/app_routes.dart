

import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:tmdp_cashback_flutter/screens/home/home_screen.dart';
import 'package:tmdp_cashback_flutter/screens/on_boarding/login/complete_rejistration.dart';
import 'package:tmdp_cashback_flutter/screens/on_boarding/login/login_rejister_screen.dart';

import '../../screens/bottom_navigation_bar/AppBottomNavigationBar.dart';
import '../../screens/home/travel_booking_detail.dart';
import '../../screens/home/travel_booking_details_compair.dart';
import '../../screens/on_boarding/splash_screen/SplashScreen.dart';
import '../../screens/profile/account_security_screen.dart';
import '../../screens/profile/booking_transaction_details_screen.dart';
import '../../screens/profile/booking_transaction_screen.dart';
import '../../screens/profile/payout_screen.dart';
import '../../screens/profile/personal_data_screen.dart';
import '../../screens/profile/profile_screen.dart';
import '../../screens/profile/support_screen.dart';
import '../../screens/profile/ticket_detail_screen.dart';
import '../../screens/saved/saved_screen.dart';
import '../../screens/search/SearchScreen.dart';



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
    GetPage(name: search_screen, page: () =>  SearchScreen()),
    GetPage(name: saved_screen, page: () =>  SavedScreen()),
    GetPage(name: profile_screen, page: () =>  ProfileScreen()),
    GetPage(name: payout_screen, page: () =>  PayOutScreen()),
    GetPage(name: personal_data_screen, page: () =>  PersonalDataScreen()),
    GetPage(name: booking_transaction_screen, page: () =>  BookingTransactionScreen()),
    GetPage(name: booking_transaction_details_screen, page: () =>  BookingTransactionDetailsScreen()),
    GetPage(name: account_security_screen, page: () =>  AccountSecurityScreen()),
    GetPage(name: support_screen, page: () =>  SupportScreen()),
    GetPage(name: ticket_details_screen, page: () =>  TicketDetailScreen()),

    GetPage(name: travel_booking_detail, page: () => const TravelBookingDetailScreen()),
    GetPage(name: travel_booking_detail_compare, page: () => const TravelBookingDetailCompairScreen()),
    // GetPage(name: MyRoute.under_development, page: () => const ErrorScreen()),

  ];




  static const String splash = '/splash';
  static const String home = '/';
  static const String search_screen = '/search_screen';
  static const String saved_screen = '/saved_screen';
  static const String profile_screen = '/profile_screen';
  static const String login_rejister = '/login_rejister';
  static const String payout_screen = '/payout_screen';
  static const String personal_data_screen  = '/personal_data_screen';
  static const String booking_transaction_screen  = '/booking_transaction_screen';
  static const String booking_transaction_details_screen  = '/booking_transaction_details_screen';
  static const String account_security_screen = '/account_security_screen';
  static const String support_screen = '/support_screen';
  static const String ticket_details_screen = '/ticket_details_screen';
  static const String bottom_nav_bar = '/bottom_nav_bar';
  static const String travel_booking_detail = '/travel_booking_detail';
  static const String travel_booking_detail_compare = '/TravelBookingDetailCompairScreen';
  static const String complete_registration = '/complete_registration';





  // static const String homeRouteName = 'home';



}