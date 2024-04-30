import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tmdp_cashback_flutter/services/data_service/DataService.dart';
import 'package:tmdp_cashback_flutter/utils/app_constants.dart';
import 'package:tmdp_cashback_flutter/utils/app_functions/AppFunctions.dart';
import 'package:tmdp_cashback_flutter/utils/routes/app_routes.dart';

import '../../services/api_client/ApiClient.dart';
import '../../utils/AppColors.dart';
import '../../widgets/color_text_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: AppColors.primaryColor,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                     Row(
                      children: [
                        const Expanded(
                            child: Text("Discover",
                                style: TextStyle(
                                    fontFamily: "inter",
                                    color: Colors.white,
                                    fontSize: 26.4,
                                    fontWeight: FontWeight.w700
                                ))),

                         SvgPicture.asset(
                          'assets/wallet.svg', // Path to your SVG file
                          width: AppConstants.svg_icon_size,
                          height: AppConstants.svg_icon_size,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "0€",
                          style: TextStyle(color: Colors.white,fontSize: 19.4,fontWeight: FontWeight.w700,
                          fontFamily: "inter"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 52,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            7), // Adjust the value as needed
                        // border: Border.all(
                        //   color: Colors.grey, // Add border color if needed
                        //   width: 1, // Add border width if needed
                        // ),
                      ),
                      child:  Row(
                        children: [
                          Icon(Icons.search),
                          const Expanded(
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 8),
                                isDense: true,
                                hintText: "Where should it go?",
                              ),
                            ),
                          ),
                          SvgPicture.asset('assets/slider.svg',
                          height: AppConstants.svg_icon_size,
                          width: AppConstants.svg_icon_size,),
                          SizedBox(width: 8,)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 39,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            7), // Adjust the value as needed
                        // border: Border.all(
                        //   color: Colors.grey, // Add border color if needed
                        //   width: 1, // Add border width if needed
                        // ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.error,
                            color: AppColors.error_blue,
                            size: AppConstants.svg_icon_size,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("New here? This is how you earn cashback",
                          style: TextStyle(
                            fontSize: 13
                          ),)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Text("Deals for you",
                              style: TextStyle(
                                  // decoration: TextDecoration.underline,
                                  color: Colors.black,
                                  fontSize: 20.4,fontWeight: FontWeight.w500)),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'View all',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                                fontSize: 12.4),
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Book your trip with the best price & additional cashback.',
                      style: TextStyle(
                          // decoration: TextDecoration.underline,
                          color: AppFunctions.hexToColor("#020202"),
                          fontSize: 12.4),
                    ),
                    SizedBox(
                      height: 290,
                      child: ListView.builder(
          
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return DealItem();
                        },
                      ),
                    ),
                    //
                    // SizedBox(height: 10,),
                    itemHeading(
                      "Culinary holiday for gourmets",
                      "View all",
                      () {
                        // Add your onPressed logic here
                      },
                    ),
        
                    SizedBox(
                      height: 290,
                      child: ListView.builder(
        
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return DealItem();
                        },
                      ),
                    ),
        
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget DealItem() {
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
              width: 218,
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
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        child: Icon(Icons.favorite_outline,size: 18,),
                        radius: 16.2,
                        backgroundColor: Colors.white),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 10,
                    ),
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "210 €",
                        style: TextStyle(
                            fontSize: 9.4,
                            decoration: TextDecoration.lineThrough,
                            color: AppFunctions.hexToColor("#DE2A2A"),
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "110 €",
                        style: TextStyle(fontSize: 14.4,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const ColorTextBotton(
                        color: AppColors.container_1,
                        text: 'Daily deal',
                        textColor: AppColors.orange,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ColorTextBotton(
                        color: AppColors.container_2,
                        text: 'Up to €20 cashback',
                        textColor: AppFunctions.hexToColor("#137C58"),
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
              style: TextStyle(fontSize: 14.4,color: Colors.black,fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 4,
            ),
             Row(
              children: [
              SvgPicture.asset('assets/marker_ic.svg',
              height: 20,
              width: 20,),
                const SizedBox(
                  width: 8,
                ),
                 Text(
                  'Poljud, Split',
                  style: TextStyle(fontSize: 12.4,
                      fontWeight: FontWeight.w500,
                    color: AppFunctions.hexToColor("#5D5D5D")
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 8,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.star_outlined, color: AppFunctions.hexToColor("#F5C139"), size: 24),
                const SizedBox(
                  width: 8,
                ),
                 Text('4.8', style: TextStyle(fontSize: 10.4,fontWeight: FontWeight.w500,color: AppFunctions.hexToColor("#6D6D6D")))
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget itemHeading(String titleText, String buttonText, VoidCallback onPressed) {
    return Row(
      children: [
        Expanded(
          child: Text(
            titleText,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.black,
              fontSize: 12.4,
            ),
          ),
        ),
      ],
    );
  }

}
