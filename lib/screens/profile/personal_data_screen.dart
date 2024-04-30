import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tmdp_cashback_flutter/utils/app_constants.dart';
import 'package:tmdp_cashback_flutter/widgets/CustomButton.dart';
import 'package:tmdp_cashback_flutter/widgets/color_text_button_wrapped.dart';

import '../../models/SettingListItemModel.dart';
import '../../utils/AppColors.dart';
import '../../utils/app_functions/AppFunctions.dart';
import '../../utils/routes/app_routes.dart';
import '../../widgets/color_text_button.dart';

class PersonalDataScreen extends StatelessWidget {
  PersonalDataScreen({super.key});

  List<SettingListItemModel> list = [
    SettingListItemModel(asset: "assets/person_1.svg", text: 'Full name'),
    SettingListItemModel(
        asset: "assets/mail.svg",
        text: 'santa@gmail.com',
        needVerification: true,
        isVerified: false),
    SettingListItemModel(
        asset: "assets/phone.svg",
        text: '+4915*******89',
        needVerification: true,
        isVerified: true),
    SettingListItemModel(
      asset: "assets/cake.svg",
      text: 'Birthday',
    ),
    SettingListItemModel(asset: "assets/apartment.svg", text: 'Adress'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Personal Data',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
            ),
            const Text(
              'Here you can make settings for your personal data.',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
            SizedBox(
              height: 20,
            ),
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
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppConstants.line7,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.4,
                            color: Colors.black),
                      ),
                      Container(
                        width: 50, // Adjust the width as needed
                        height: 50, // Adjust the height as needed
                        // color: Colors.yellow,
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            const Center(
                              child: CircleAvatar(
                                  radius: 16, backgroundColor: Colors.white),
                            ),
                            Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                value: 0.5, // 50% completion
                                backgroundColor: Colors
                                    .transparent, // Background color of the progress bar
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    AppFunctions.hexToColor(
                                        "#137C58")), // Color of the progress bar
                              ),
                            ),
                            const Center(
                              child: Text(
                                '50%', // Text to display
                                style: TextStyle(
                                    color: Colors.black, // Color of the text
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomButton(
                    font_weight: FontWeight.w600,
                    fontSize: 16.3,
                    btnText: 'Confirm your e-mail adress',
                    color: Colors.white,
                    textColor: AppFunctions.hexToColor("#1673DF"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
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
                    child: ListTile(
                      leading:  SvgPicture.asset(
                        list[index].asset,
                        width: 16,
                        height: 16,
                      ),
                      title: Text(
                        list[index].text,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.4),
                      ),
                      // Use subtitle for secondary information if needed
                      // subtitle: Text(list[index].secondaryText),
                      trailing: list[index].needVerification == true
                          ? Wrap(
                              children: [
                                ColorTextButton(
                                  textColor: list[index].isVerified == true
                                      ? AppFunctions.hexToColor("#137C58")
                                      : AppFunctions.hexToColor("#7C1313"),
                                  text: list[index].isVerified == true
                                      ? "Verified"
                                      : "Not Verified",
                                  bgcolor: list[index].isVerified == true
                                      ? AppFunctions.hexToColor("#E4F9DD")
                                      : AppFunctions.hexToColor("#F9DDDD"),
                                  borderRadius: 8,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.navigate_next)
                              ],
                            )
                          : Icon(Icons.navigate_next), //,
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
