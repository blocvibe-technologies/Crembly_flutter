import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tmdp_cashback_flutter/models/TransactionDetailedModel.dart';
import 'package:tmdp_cashback_flutter/models/enums/status_enum.dart';
import 'package:tmdp_cashback_flutter/utils/app_constants.dart';
import 'package:tmdp_cashback_flutter/widgets/CustomButton.dart';

import '../../models/BookingTransactionItemModel.dart';
import '../../models/SupportItemModel.dart';
import '../../utils/AppColors.dart';
import '../../utils/app_functions/AppFunctions.dart';
import '../../utils/routes/app_routes.dart';
import '../../widgets/color_text_button_wrapped.dart';

class SupportScreen extends StatefulWidget {
  SupportScreen({super.key});
  bool _isExpanded = false;
  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  List<SupportItemModel> list = [
    SupportItemModel(
        text: 'How i can get cashback?',
        detailsText: AppConstants.loreum_ipsum),
    SupportItemModel(
        text: 'Where can i see my transactions?',
        detailsText: AppConstants.loreum_ipsum),
    SupportItemModel(
        text: 'Where can I delete my account?',
        detailsText: AppConstants.loreum_ipsum),
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
                Get.toNamed(AppRoute.ticket_details_screen);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Support',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
            ),
            Text(
              'If you need help, you can find our FAQ and customer service here.',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
            SizedBox(
              height: 20,
            ),
            const Text('FAQ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 19.4
            ),),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.separated(
                // padding: const EdgeInsets.all(12.0),
                itemCount: list.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                      color: AppColors.disable_card, height: 1);
                },
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
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
                    child: ExpansionTile(

                      title: Text(list[index].text),
                      childrenPadding:
                          EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      onExpansionChanged: (bool expanded){
                        setState(() {
                          widget._isExpanded = expanded; // Update the state variable
                        });
                      },
                      initiallyExpanded: widget._isExpanded,
                      children: [
                        Text(list[index].detailsText,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            color: AppFunctions.hexToColor("#6D6D6D")
                          ),),
                      ],
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
