
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tmdp_cashback_flutter/utils/app_constants.dart';
import 'package:tmdp_cashback_flutter/widgets/CustomButton.dart';

import '../../models/SettingListItemModel.dart';
import '../../utils/AppColors.dart';
import '../../utils/app_functions/AppFunctions.dart';
import '../../utils/routes/app_routes.dart';
import '../../widgets/color_text_button.dart';

class PersonalDataScreen extends StatelessWidget {
   PersonalDataScreen({super.key});

   List<SettingListItemModel> list = [
     SettingListItemModel(icon: Icons.person, text: 'Full name'),
     SettingListItemModel(icon: Icons.mail_rounded, text: 'Personal Data',needVerification: true,isVerified: false),
     SettingListItemModel(icon: Icons.phone_enabled, text: '+4915*******89',needVerification: true,isVerified: true),
     SettingListItemModel(icon: Icons.cake_outlined, text: 'Birthday',),
     SettingListItemModel(icon: Icons.account_balance_sharp, text: 'Adress'),

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
              'Personal Data',
              style:
              TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
            ),
            const Text(
              'Here you can make settings for your personal data.',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
            SizedBox(height: 20,),
            Container(
              height: 155,
              padding: EdgeInsets.all(12),
              // margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppFunctions.hexToColor("#E8F2FC"),
                border: Border.all(
                  color: AppFunctions.hexToColor("#E8F2FC"),
                  width: 2.0, // Adjust the width as needed

                ),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppConstants.line7,
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                      ),
                      Container(
                        width: 50, // Adjust the width as needed
                        height: 50, // Adjust the height as needed
                        // color: Colors.yellow,
                        alignment: Alignment.center,
                        child: const Stack(

                          children: [
                            Center(child: CircleAvatar(
                              radius:16,
                                backgroundColor:Colors.white),),
                            Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                value: 0.5, // 50% completion
                                backgroundColor: Colors.transparent, // Background color of the progress bar
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.green), // Color of the progress bar
                              ),
                            ),
                            Center(
                              child: Text(
                                '50%', // Text to display
                                style: TextStyle(
                                  color: Colors.black, // Color of the text
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 8,),
                  CustomButton(btnText: 'Confirm your e-mail adress',color: Colors.white,textColor:AppFunctions.hexToColor("#1673DF"),fontSize: 16,)

                ],
              ),
            ),
            SizedBox(height: 24,),
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
                      leading: Icon(list[index].icon),
                      title: Text(
                        list[index].text,
                        style: TextStyle(color: Colors.black),
                      ),
                      // Use subtitle for secondary information if needed
                      // subtitle: Text(list[index].secondaryText),
                      trailing: list[index].needVerification == true && list[index].isVerified == true
                          ?  Wrap(children: [
                        Icon(Icons.verified,color: Colors.green,),
                        SizedBox(width: 5,),
                        Icon(Icons.navigate_next)
                      ],)
                          : Icon(Icons.navigate_next),//,
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
