import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tmdp_cashback_flutter/utils/AppColors.dart';
import 'package:tmdp_cashback_flutter/utils/app_functions/AppFunctions.dart';
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
              height: 52,
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0,

                      ), // Se
                        side: BorderSide(color: AppFunctions.hexToColor("#B1B1B1"))// t your desired border radius
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
              height: 52,
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                onPressed: () {
                  AppFunctions.showBottomSheetTripWhen(context,DateTime.now(),DateTime.now());
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(
                          10.0),
                        side: BorderSide(color: AppFunctions.hexToColor("#B1B1B1"))// Set your desired border radius
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
              height: 52,
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                onPressed: () {
                  AppFunctions.showBottomSheetTripWho(context,DateTime.now(),DateTime.now());
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Set y
                        side: BorderSide(color: AppFunctions.hexToColor("#B1B1B1"))// our desired border radius
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
              fontSize: 16.3,
              font_weight: FontWeight.w600,
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




}
