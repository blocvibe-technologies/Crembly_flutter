

import 'package:flutter/material.dart';
import 'package:tmdp_cashback_flutter/screens/home/home_screen.dart';
import 'package:tmdp_cashback_flutter/screens/on_boarding/login/login_rejister_screen.dart';

import '../../utils/AppColors.dart';
import '../home/travel_booking_detail.dart';
import '../on_boarding/login/complete_rejistration.dart';
import '../on_boarding/splash_screen/SplashScreen.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key});

  @override
  State<AppBottomNavigationBar> createState() => _ViewReportBottomNavigationBar();
}

class _ViewReportBottomNavigationBar extends State<AppBottomNavigationBar> {

  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      // const Center(child: Icon(Icons.calendar_today,size: 64,color: Colors.teal,),),
      // const Center(child: Icon(Icons.calendar_month,size: 64,color: Colors.cyan,),),
      HomeScreen(),
      TravelBookingDetailScreen(),
      CompleteRejistrationScreen(),
      HomeScreen(),


      // const Center(child: Icon(Icons.settings,size: 64,color: Colors.teal,),)
    ];
    final _kBottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Discover'),
      const BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
      const BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Saved'),
      const BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account')

    ];

    assert(_kTabPages.length ==_kBottomNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      selectedItemColor: AppColors.selectedTabTextColor,
      unselectedItemColor: AppColors.unSelectedTabTextColor,
      backgroundColor: const Color(0xFFfcc631),
      items: _kBottomNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index){
        setState(() {
          _currentTabIndex = index;
        });
      },

    );
    return  Scaffold(
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,

    );
  }
}
