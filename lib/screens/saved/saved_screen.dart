
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/AppColors.dart';
import '../../utils/routes/app_routes.dart';
import '../../widgets/color_text_button.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Saved',style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Colors.black
            ),),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return DataItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DataItem extends StatelessWidget {
  const DataItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: (){
          Get.toNamed(AppRoute.travel_booking_detail);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              // width: 218,
              height: 199,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.disable_card,
                borderRadius:
                BorderRadius.circular(7), // Adjust the value as needed
                // border: Border.all(
                //   color: Colors.grey, // Add border color if needed
                //   width: 1, // Add border width if needed
                // ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        child: Icon(Icons.favorite_outline,color: Colors.white,),
                        radius: 16.2,
                        backgroundColor: AppColors.primaryColor),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 10,
                    ),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ColorTextBotton(
                        color: AppColors.container_1,
                        text: 'Daily deal',
                        textColor: AppColors.orange,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      ColorTextBotton(
                        color: AppColors.container_2,
                        text: 'Up to €20 cashback',
                        textColor: AppColors.error_blue,
                      ),
                      // ColorTextBotton(color: AppColors.orange, text: 'Daily deal',),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Brnistra Suites',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 4,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, size: 20),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Poljud, Split',
                      style: TextStyle(fontSize: 10.4),
                    )
                  ],
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "210 €",
                      style: TextStyle(
                          fontSize: 9.4,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.red),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "110 €",
                      style: TextStyle(fontSize: 14.4),
                    ),
                  ],
                ),

              ],
            ),
            const SizedBox(
              width: 8,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 20),
                SizedBox(
                  width: 8,
                ),
                Text('4.8', style: TextStyle(fontSize: 10.4))
              ],
            ),
          ],
        ),
      ),
    );
  }
}


