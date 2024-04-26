
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tmdp_cashback_flutter/models/TransactionDetailedModel.dart';
import 'package:tmdp_cashback_flutter/models/enums/status_enum.dart';

import '../../models/BookingTransactionItemModel.dart';
import '../../models/TicketDetailedModel.dart';
import '../../utils/AppColors.dart';
import '../../utils/app_functions/AppFunctions.dart';
import '../../utils/routes/app_routes.dart';
import '../../widgets/CustomButton.dart';
import '../../widgets/color_text_button.dart';
import '../../widgets/color_text_button_wrapped.dart';

class TicketDetailScreen extends StatelessWidget {
  TicketDetailScreen({super.key});


  List<TicketDetailedModel> list = [
    TicketDetailedModel(text: '#342122', detailsText: 'opened'),
    TicketDetailedModel(text: '#443122', detailsText: 'closed'),
    TicketDetailedModel(text: '#322192', detailsText: 'solved'),
    TicketDetailedModel(text: '#545155', detailsText: 'opened'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(12),
        height: 136,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 8),
        decoration: BoxDecoration(
            color: AppFunctions.hexToColor("#E8F2FC"),
            // border: Border.all(
            //   // color: Colors.black,
            //   width: 2.0, // Adjust the width as needed
            // ),
            borderRadius: BorderRadius.circular(7)
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Contact our support',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),),
            const SizedBox(height: 8,),
            CustomButton(
              btnText: 'Open a ticket',
              textColor: AppFunctions.hexToColor("#1673DF"),
              color: Colors.white,
              onPressed: (){
                // Get.toNamed(AppRoute.);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize:MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            const Text(
              'Support',
              style:
              TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
            ),
            const Text(
              'If you need help, you can find our FAQ and customer service here.',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
            SizedBox(height: 30,),

            Text('Your support tickets',style:
              TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.4
              ),),
            SizedBox(height: 8,),
            const Divider(color: AppColors.disable_card, height: 1),
            // SizedBox(height: 8,),
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
                      leading: Icon(Icons.help_outline),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              list[index].text,
                              style: const TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.w500),
                            ),
                            ColorTextBotton(text: list[index].detailsText, color: AppFunctions.hexToColor("#F9F4DD"), textColor: AppFunctions.hexToColor("#DA8536"),)
                          ],
                        ),
                        // Use subtitle for secondary information if needed
                        // subtitle: Text(list[index].secondaryText),
                        trailing:Icon(Icons.navigate_next)

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
