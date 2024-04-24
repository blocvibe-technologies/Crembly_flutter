import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tmdp_cashback_flutter/utils/AppColors.dart';
import 'package:tmdp_cashback_flutter/widgets/CustomButton.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});
  String _searchText = '';
  List<String> _data = [
    'Italia - Hotels',
    'Royal Villa ',
    'The Emirates Villa',
    'Green Palace',
    'Hotel Blue Star',
    'Black Daimond Hotel',
  ];
  List<String>? _filteredData;
  TextEditingController searchController = TextEditingController();
  DateTime? _focusedDay;
  DateTime? _selectedDay;

  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.searchController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    widget._filteredData = widget._data
        .where((item) =>
            item.toLowerCase().contains(widget._searchText.toLowerCase()))
        .toList();

    widget._focusedDay = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Search",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 47,
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Set your desired border radius
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      'Where should it go?',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 47,
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                onPressed: () {
                  showBottomSheetTripWhen(context);
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Set your desired border radius
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    const Text('When?', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 47,
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                onPressed: () {
                  showBottomSheetTripWho(context);
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Set your desired border radius
                    ),
                  ),
                ),
                child: const Row(
                  children: [
                    Text(
                      'Who?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            CustomButton(
              btnText: 'Search',
              color: AppColors.primaryColor,
              onPressed: () {
                _showBottomSheetSearch(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void _showBottomSheetSearch(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 56,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            controller: widget.searchController,
                            onChanged: (value) {
                              setState(() {
                                widget._filteredData = widget._data
                                    .where((item) => item
                                        .toLowerCase()
                                        .contains(value.toLowerCase()))
                                    .toList();
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Search',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  const Row(
                    children: [
                      Text(
                        'Last searched',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      itemCount: widget._filteredData?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: AppColors.disable_card,
                                border: Border.all(
                                  color: AppColors.disable_card,
                                  width: 2.0, // Adjust the width as needed
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Icon(
                              Icons.watch_later_outlined,
                              color: Colors.black,
                            ), // Replace YourChildWidget() with your actual content
                          ),
                          title: Text(widget._filteredData![index]),
                          subtitle: const Text(" last week"),
                          onTap: () {
                            // Do something when an item is tapped
                            Navigator.of(context).pop();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void showBottomSheetTripWhen(BuildContext context) {
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
                    'When is your trip?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(height: 10),
                  TableCalendar(
                    firstDay: DateTime.utc(2024, 1, 1),
                    lastDay: DateTime.utc(2030, 12, 31),
                    focusedDay: widget._focusedDay!,
                    calendarFormat: widget._calendarFormat,
                    selectedDayPredicate: (day) {
                      return isSameDay(widget._selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        widget._selectedDay = selectedDay;
                        widget._focusedDay = focusedDay;
                        print(widget._selectedDay);
                        print("${widget._focusedDay}>>");
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
                          "current date is  :=>${widget._selectedDay} >>${widget._focusedDay}");
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

  void showBottomSheetTripWho(BuildContext context) {
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
                      fontSize: 19,
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
                        return Divider(
                          color: Colors.grey.shade400, // Set the color of the divider
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
                          "current date is  :=>${widget._selectedDay} >>${widget._focusedDay}");
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

  Widget comingAlongItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
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
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
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
