
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tmdp_cashback_flutter/models/enums/status_enum.dart';

import '../../models/BookingTransactionItemModel.dart';
import '../../utils/AppColors.dart';
import '../../utils/app_functions/AppFunctions.dart';
import '../../utils/routes/app_routes.dart';

class BookingTransactionScreen extends StatelessWidget {
  BookingTransactionScreen({super.key});

  List<BookingTransactionItemModel> list = [
    BookingTransactionItemModel(transactionId: '#423123', transactionTitle: 'Booking.com',status: Status.canceled,textColor: AppFunctions.hexToColor("#7C1313"),boxColor:AppFunctions.hexToColor("#F9DDDD") ),
    BookingTransactionItemModel(transactionId: '#827712', transactionTitle: 'Expedia.de',status: Status.pending,textColor: AppFunctions.hexToColor("#F57416"),boxColor:AppFunctions.hexToColor("#FFECD6")),
    BookingTransactionItemModel(transactionId: '#773123', transactionTitle: 'Hotels.com',status: Status.verified,textColor: AppFunctions.hexToColor("#7C1313"),boxColor:AppFunctions.hexToColor("#F9DDDD")),
    BookingTransactionItemModel(transactionId: '#863123', transactionTitle: 'Booking.com',status: Status.verified,textColor: AppFunctions.hexToColor("#E4F9DD"),boxColor:AppFunctions.hexToColor("#137C58")),
    BookingTransactionItemModel(transactionId: '#421123', transactionTitle: 'Expedia.de',status: Status.notVerified,textColor: AppFunctions.hexToColor("#7C1313"),boxColor:AppFunctions.hexToColor("#F9DDDD")),
    BookingTransactionItemModel(transactionId: '#923123', transactionTitle: 'Hotels.com',status: Status.canceled,textColor: AppFunctions.hexToColor("#F9DDDD"),boxColor:AppFunctions.hexToColor("#7C1313"))

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize:MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Bookings & Transactions',
              style:
              TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
            ),
            const Text(
              'Here you can see an overview of your bookings and transactions.',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
            SizedBox(height: 20,),
            Container(
              height: 66,
              alignment: Alignment.center,
              padding: EdgeInsets.all(12),
              // margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  border: Border.all(
                    color: AppFunctions.hexToColor("#E8F2FC"),
                    width: 2.0, // Adjust the width as needed

                  ),
                  borderRadius: BorderRadius.circular(7)
              ),
              child: const Row(
                crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Available for withdrawal",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11,color: Colors.white),
                  ),
                  Text(
                    "0,00€",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20,color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24,),
            const Text(
              'Transactions',
              style:
              TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
            ),
            Expanded(
              child: ListView.separated(
                // padding: const EdgeInsets.all(12.0),
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
                          Get.toNamed(AppRoute.booking_transaction_details_screen);
                          break;
                        case 1:
                          Get.toNamed(AppRoute.personal_data_screen);
                          break;
                        case 2:
                        // Handle case when index is 2
                          Get.toNamed(AppRoute.booking_transaction_details_screen);
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
                      leading:  SvgPicture.asset(
                        'assets/receipt.svg',
                        width: 16,
                        height: 16,
                      ),
                      title: Container(
                        // color: Colors.yellow,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                list[index].transactionId,
                                style: TextStyle(color: Colors.black, fontSize: 11.5),
                              ),
                            ),
                            Expanded(
                                    child: Text(
                                list[index].transactionTitle,
                                style: TextStyle(color: Colors.black, fontSize: 11.5),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 6,vertical: 3),
                                decoration: BoxDecoration(
                                    color: list[index].boxColor,
                                    border: Border.all(
                                      color: list[index].boxColor,
                                      width: 2.0, // Adjust the width as needed

                                    ),
                                    borderRadius: BorderRadius.circular(8)
                                ),
                              child: Text(
                                list[index].getStatusText(),
                                style: TextStyle(color:list[index].textColor, fontSize: 10.5),
                              ),
                            ),
                          ],
                        ),

                      ),
                      // Use subtitle for secondary information if needed
                      // subtitle: Text(list[index].secondaryText),
                      trailing: Icon(Icons.navigate_next)

                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
