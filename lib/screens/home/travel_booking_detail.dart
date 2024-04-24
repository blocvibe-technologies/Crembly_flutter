
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tmdp_cashback_flutter/utils/AppColors.dart';
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
              const Row(
                children: [
                  Expanded(
                      child: Text('Villa Trede',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,

                      ),)
                  ),
                  Icon(Icons.star,color: Colors.yellow,),
                  Text('4.8'),
                  SizedBox(width: 8,)
                ],
              ),
              const SizedBox(height: 5,),
              const Row(

                children: [
                  Icon(Icons.location_on_outlined,color: Colors.black,),
                  Text('Poljud, Split'),
                  SizedBox(width: 8,)
                ],
              ),
              const SizedBox(height: 12,),
              Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.container_color1,
                    width: 2.0, // Adjust the width as needed

                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child:  Row(

                  children: [
                    SizedBox(width: 18,),

                    Icon(Icons.calendar_month),
                    SizedBox(width: 8,),

                    Text('21 Apr. bis 27. Apr.'),
                    SizedBox(width: 58,),
                     Container(
                       width: 2,
                       color: AppColors.container_color1,
                       height: MediaQuery.of(context).size.height*0.05,
                     ),
                    SizedBox(width: 10,),
                    Icon(Icons.bed),
                    SizedBox(width: 8,),

                    Text('1'),
                    Icon(Icons.man),
                    SizedBox(width: 8,),

                    Text('2'),
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
                    const ColorTextBotton(text: 'Up to €20 cashback', color: AppColors.container_2, textColor: Colors.green)
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
                },),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 47,
                width: MediaQuery.of(context).size.width,
                child: OutlinedButton(onPressed: (){},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Set your desired border radius
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
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),),
              const Text('Book your trip with the best price & additional cashback.',style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
