

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tmdp_cashback_flutter/models/TransactionDetailedModel.dart';
import 'package:tmdp_cashback_flutter/models/enums/status_enum.dart';

import '../../models/BookingTransactionItemModel.dart';
import '../../utils/AppColors.dart';
import '../../utils/app_functions/AppFunctions.dart';
import '../../utils/routes/app_routes.dart';
import '../../widgets/color_text_button_wrapped.dart';

class BookingTransactionDetailsScreen extends StatelessWidget {
  BookingTransactionDetailsScreen({super.key});

  List<TransactionDetailedModel> list = [
    TransactionDetailedModel(needVerification: false,text: "Transaction-id",asset: "assets/receipt.svg", detailsText: '#423123',),
    TransactionDetailedModel(needVerification: true,text: "Status",asset: 'assets/refresh.svg', detailsText: 'verified',),
    TransactionDetailedModel(needVerification: false,text: "Cashback",asset: 'assets/euro.svg', detailsText: '32,40€',),
    TransactionDetailedModel(needVerification: false,text: "Provider",asset: 'assets/bookmark.svg', detailsText: 'Booking.com',),
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
              'Transaction #423123',
              style:
              TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
            ),
            const Text(
              'Here you can see the details of your transaction or booking.',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
            SizedBox(height: 20,),
            Container(
              height: 180,
              alignment: Alignment.center,
              padding: EdgeInsets.all(12),
              // margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color:  AppFunctions.hexToColor("#EAEAEA"),
                  // border: Border.all(
                  //   color: AppFunctions.hexToColor("#E8F2FC"),
                  //   width: 2.0, // Adjust the width as needed
                  //
                  // ),
                  borderRadius: BorderRadius.circular(7)
              ),

            ),
            SizedBox(height: 8,),
            Row(
              crossAxisAlignment:CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Text(
                    "Brnistra Suites",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.4,color: Colors.black),
                  ),
                ),
                Icon(Icons.location_on,color:AppFunctions.hexToColor("#5D5D5D"),size: 18,),
                Text(
                  "Poljud, Split",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color:AppFunctions.hexToColor("#5D5D5D")),
                ),
              ],
            ),
            SizedBox(height: 8,),
            // const Text(
            //   'Transactions Details',
            //   style:
            //   TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
            // ),
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
                        leading: SvgPicture.asset(
                          list[index].asset,
                          width: 16,
                          height: 16,
                          color: Colors.black,
                        ),
                        title: Text(
                          list[index].text,
                          style: const TextStyle(color: Colors.black, fontSize: 14.4,fontWeight: FontWeight.w500),
                        ),
                        // Use subtitle for secondary information if needed
                        // subtitle: Text(list[index].secondaryText),
                         trailing: list[index].needVerification! ? ColorTextButton(bgcolor: AppFunctions.hexToColor("#E4F9DD"),
                           text: list[index].detailsText, textColor: AppFunctions.hexToColor("#137C58"),):
                         Text(
                           list[index].detailsText,
                           style: const TextStyle(color: Colors.black, fontSize: 14.4,fontWeight: FontWeight.w500),
                         ),

                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 8,),
            Divider(height: 1,thickness:1,color: AppColors.disable_card,),
            SizedBox(height: 8,),
             Text(
              'You can find more information about the booking or the booking details on the page of the booked provider.',
              style:
              TextStyle(fontWeight: FontWeight.w500, fontSize: 12.4,color: AppFunctions.hexToColor("#00000080")),
            ),
            SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}
