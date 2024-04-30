

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../widgets/CustomButton.dart';
import '../AppColors.dart';

class AppFunctions{
  static CalendarFormat _calendarFormat = CalendarFormat.month;

  static String formatCountryCode(String text) {
    // Extract the country code from the input string
    String countryCode = text.replaceAll(RegExp(r'[^0-9+]'), '');

    // Format the country code as "(+xxx)"
    return '(+$countryCode)';
  }
  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
  static double pxToDp(BuildContext context, double px) {
    // Get the device's pixel ratio
    final double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;

    // Calculate the dp value
    return px / devicePixelRatio;
  }


  static void showBottomSheetTripWhen(BuildContext context,DateTime? _focusedDay,
  DateTime? _selectedDay) {
    print('trip called !!');
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext builder) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'When is your trip?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TableCalendar(
                    firstDay: DateTime.utc(2024, 1, 1),
                    lastDay: DateTime.utc(2030, 12, 31),
                    focusedDay: _focusedDay!,
                    calendarFormat:_calendarFormat,
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                        print(_selectedDay);
                        print("${_focusedDay}>>");
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    btnText: 'Continue',
                    color: AppColors.primaryColor,
                    onPressed: () {
                      print(
                          "current date is  :=>${_selectedDay} >>${_focusedDay}");
                      Get.back();
                    },
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  static void showBottomSheetTripWho(BuildContext context,DateTime? _focusedDay,
  DateTime? _selectedDay) {
    print('trip called !!');
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext builder) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Who is coming along?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 19.4,
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 350,

                    child: ListView.separated(
                      // padding: EdgeInsets.symmetric(vertical: 20),
                      itemCount: 5, // Number of items in the list
                      itemBuilder: (BuildContext context, int index) {
                        return comingAlongItem();
                        // return ListTile(
                        //   title: Text('Item $index'),
                        // );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider(
                          color: AppColors.top_divider_grey, // Set the color of the divider
                          thickness: 1, // Set the thickness of the divider
                        );
                      },
                    ),
                  ),
                  CustomButton(
                    btnText: 'Continue',
                    color: AppColors.primaryColor,
                    onPressed: () {
                      print(
                          "current date is  :=>${_selectedDay} >>${_focusedDay}");
                      Get.back();
                    },
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  static Widget comingAlongItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Erwatchsene',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              Text(
                'Ab Jaheran 13 Jan',
                style: TextStyle(
                  color: Colors.black,
                  // fontWeight: FontWeight.w600,
                  fontSize: 12.4,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: 1.0, // Adjust the width as needed
                  ),
                  // borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.remove,
                  color: Colors.grey.shade400,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                '0',
                style: TextStyle(
                  color: Colors.black,
                  // fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey.shade700,
                    width: 1.0, // Adjust the width as needed
                  ),
                  // borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.add, color: Colors.grey.shade700),
              ),
            ],
          )
        ],
      ),
    );
  }

}