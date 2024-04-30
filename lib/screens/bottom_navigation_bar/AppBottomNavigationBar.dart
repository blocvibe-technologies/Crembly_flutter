

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tmdp_cashback_flutter/screens/home/home_screen.dart';
import 'package:tmdp_cashback_flutter/screens/on_boarding/login/login_rejister_screen.dart';
import 'package:tmdp_cashback_flutter/screens/search/SearchScreen.dart';

import '../../utils/AppColors.dart';
import '../home/travel_booking_detail.dart';
import '../home/travel_booking_details_compair.dart';
import '../on_boarding/login/complete_rejistration.dart';
import '../on_boarding/splash_screen/SplashScreen.dart';
import '../profile/profile_screen.dart';
import '../saved/saved_screen.dart';

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
      SearchScreen(),
      SavedScreen(),
      ProfileScreen(),


      // const Center(child: Icon(Icons.settings,size: 64,color: Colors.teal,),)
    ];
    final _kBottomNavBarItems = <BottomNavigationBarItem>[
       BottomNavigationBarItem(
         icon: SvgPicture.asset(
        'assets/home.svg', // Path to your SVG file
        width: 18,
        height: 18,
        color: _currentTabIndex == 0 ? Colors.black : Colors.grey, // Set color based on selected state
      ),
        label: 'Discover',
       ),
       BottomNavigationBarItem(icon: SvgPicture.asset(
        'assets/search.svg', // Path to your SVG file
         width: 18,
         height: 18,
        color: _currentTabIndex == 1 ? Colors.black : Colors.grey, // Set color based on selected state
      ),
        label: 'Search',
      ),
       BottomNavigationBarItem(
         icon:Icon(Icons.favorite_outline, color: _currentTabIndex == 2 ? Colors.black : Colors.grey,size: 20,),

        label: 'Saved',
      ),
       BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'assets/person_1.svg', // Path to your SVG file
          width: 16,
          height: 16,
          color: _currentTabIndex == 3 ? Colors.black : Colors.grey, // Set color based on selected state
        ),
        label: 'Account',

      )

    ];

    assert(_kTabPages.length ==_kBottomNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      selectedItemColor: AppColors.selectedTabTextColor,
      unselectedItemColor: AppColors.unSelectedTabTextColor,
      backgroundColor: Colors.white,
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
