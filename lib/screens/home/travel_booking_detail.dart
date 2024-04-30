
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tmdp_cashback_flutter/utils/AppColors.dart';
import 'package:tmdp_cashback_flutter/utils/app_constants.dart';
import 'package:tmdp_cashback_flutter/utils/app_functions/AppFunctions.dart';
import 'package:tmdp_cashback_flutter/utils/routes/app_routes.dart';
import 'package:tmdp_cashback_flutter/widgets/CustomButton.dart';
import 'package:tmdp_cashback_flutter/widgets/color_text_button.dart';

import '../../widgets/auto_img_slider.dart';

class TravelBookingDetailScreen extends StatelessWidget {
  const TravelBookingDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.ios_share_rounded),
          SizedBox(width: 5,),
          Icon(Icons.favorite_outline),
          SizedBox(width: 20,),

        ],

      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              AutoImageSlider(),
              const SizedBox(height: 10,),
               Row(
                children: [
                  const Expanded(
                      child: Text('Villa Trede',
                      style: TextStyle(
                        fontSize: 26.4,
                        fontWeight: FontWeight.w700,
                        color: Colors.black

                      ),)
                  ),
                  const Icon(Icons.star,color: Colors.yellow,),
                  Text('4.8',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.4,color: AppFunctions.hexToColor("#6D6D6D")
                    ),),
                  SizedBox(width: 8,)
                ],
              ),
              const SizedBox(height: 5,),
               Row(

                children: [
                  Icon(Icons.location_on_outlined,color: AppFunctions.hexToColor("#5D5D5D"),),
                  Text('Poljud, Split',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.4,color: AppFunctions.hexToColor("#5D5D5D")
                  ),),
                  SizedBox(width: 8,)
                ],
              ),
              const SizedBox(height: 12,),
              Container(
                height: 52,
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.container_color1,
                    width: 1.0, // Adjust the width as needed

                  ),
                  borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                child:  Row(

                  children: [
                    SizedBox(width: 18,),

                    Icon(Icons.calendar_month),
                    SizedBox(width: 8,),

                    InkWell(
                      onTap: (){
                        AppFunctions.showBottomSheetTripWhen(context,DateTime.now(),DateTime.now());
                      },
                        child: Text('21 Apr. bis 27. Apr.')),
                    SizedBox(width: 58,),
                     Container(
                       width: 1,
                       color: AppColors.container_color1,
                       height: MediaQuery.of(context).size.height*0.05,
                     ),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: (){
                        AppFunctions.showBottomSheetTripWho(context,DateTime.now(),DateTime.now());
                      },
                      child: Row(
                        children: [
                          Icon(Icons.bed),
                          SizedBox(width: 8,),

                          Text('1'),
                          SizedBox(width: 8,),
                          SvgPicture.asset('assets/person_1.svg',height: 14,width: 14,color: Colors.black,),
                          SizedBox(width: 8,),

                          Text('2'),
                        ],
                      ),
                    )

                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Row(
                  children: [
                    // SvgPicture.asset(
                    //   color: Colors.black,
                    //   'assets/booking_com.svg',
                    //   semanticsLabel: 'booking_com',
                    // )
                    Expanded(
                      child: Image.asset(
                        'assets/book.png',
                        semanticLabel: 'booking',
                        // width: 100, // Set width as needed
                        // height: 100, // Set height as needed
                        // Additional properties can be added as needed
                      ),
                    )

,
                     ColorTextBotton(text: 'Up to €20 cashback', color: AppColors.container_2, textColor: AppFunctions.hexToColor("#137C58"))
                    ,
                    SizedBox(width: 10,),
                    const Text('348€',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 21
                    ),)
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
               CustomButton(
                btnText: 'Continue to the offer',
                color: AppColors.primaryColor,
                onPressed: (){
                  Get.toNamed(AppRoute.travel_booking_detail_compare);
                },
               font_weight: FontWeight.w600,fontSize: 16.3,),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 52,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(onPressed: (){},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppConstants.default_radius), // Set your desired border radius
                      ),
                    ),
                  ), child: const Text(
                    'Show 12 offers from €273',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                ),),
              ),
              SizedBox(height: 20,),
              const Text('Description',style: TextStyle(
                fontSize: 20.4,
                fontWeight: FontWeight.w700,
                  color: Colors.black
              ),),
               Text('Book your trip with the best price & additional cashback.',style: TextStyle(
                fontSize: 12.4,
                fontWeight: FontWeight.w400,
                   color: AppFunctions.hexToColor("#020202")
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
