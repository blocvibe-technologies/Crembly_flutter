import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tmdp_cashback_flutter/utils/routes/app_routes.dart';

import '../../models/SettingListItemModel.dart';
import '../../utils/AppColors.dart';
import '../../widgets/CustomButton.dart';
import '../../widgets/text_box_button.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key});

  List<SettingListItemModel> list = [
  SettingListItemModel(icon: Icons.receipt, text: 'Bookings & Transactions'),
  SettingListItemModel(icon: Icons.person, text: 'Personal Data'),
  SettingListItemModel(icon: Icons.lock, text: 'Account & Security'),
  SettingListItemModel(icon: Icons.question_mark_rounded, text: 'Support'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Column(
                children: [
                  Container(
                    color: AppColors.primaryColor,
                    height: 125,
                    padding: const EdgeInsets.all(12),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '20 € Cashback',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Total revenue',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '0,00€',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: AppColors.primaryColor2,
                    height: 70,
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Available for withdrawal',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        // const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '20 € Cashback',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Get.toNamed(AppRoute.payout_screen);
                              },
                              child: Container(
                                height: 30,
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2.0, // Adjust the width as needed
                                    ),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Text(
                                  'Pay off',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Settings',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(12.0),
                itemCount: list.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(color: AppColors.disable_card, height: 1);
                },
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      switch (index) {
                        case 0:
                        // Handle case when index is 0
                          Get.toNamed(AppRoute.booking_transaction_screen);
                          break;
                        case 1:
                          Get.toNamed(AppRoute.personal_data_screen);
                          break;
                        case 2:
                        // Handle case when index is 2
                          break;
                        case 3:
                        // Handle case when index is 3
                          break;
                        case 4:
                        // Handle case when index is 4
                          break;
                        default:
                        // Handle default case when index is none of the above
                          break;
                      }
                    },
                    child: ListTile(
                      leading: Icon(list[index].icon),
                      title: Text(
                        list[index].text,
                        style: TextStyle(color: Colors.black),
                      ),
                      // Use subtitle for secondary information if needed
                      // subtitle: Text(list[index].secondaryText),
                      trailing: const Icon(Icons.navigate_next),
                    ),
                  );
                },
              ),
            ),
            // const Divider(color: Colors.black, height: 1),




          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 51,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 12,right: 12,bottom: 12)
      ,
        child: OutlinedButton(onPressed: (){},
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(

                RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(8.0), // Adjust the value as needed
                ),

              ),
              side: MaterialStateProperty.all(const BorderSide(
                color: Colors.black, // Set the color of the border
                width: 1.0, // Adjust the width of the border as needed
              )),
              // Add other button style properties as needed
            ),
            child: const Text('Log out',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                color: Colors.black
              ),)),
      ),
    );
  }

}




