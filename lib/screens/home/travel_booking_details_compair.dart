
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tmdp_cashback_flutter/utils/app_constants.dart';
import 'package:tmdp_cashback_flutter/utils/routes/app_routes.dart';

import '../../utils/AppColors.dart';
import '../../utils/app_functions/AppFunctions.dart';
import '../../widgets/color_text_button.dart';

class TravelBookingDetailCompairScreen extends StatelessWidget {
  const TravelBookingDetailCompairScreen({super.key});

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
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start
          ,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12,),
                  const Text('Offers',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 26.4,color: Colors.black
                    ),),
                  const SizedBox(
                    height: 8,
                  ),
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
                  // InkWell(
                  //   onTap: (){
                  //     Get.toNamed(AppRoute.search_screen);
                  //   }
                  //   ,
                  //   child: Container(
                  //     padding: EdgeInsets.all(7),
                  //     decoration: BoxDecoration(
                  //         border: Border.all(
                  //           color: AppColors.container_color1,
                  //           width: 1.0, // Adjust the width as needed
                  //
                  //         ),
                  //         borderRadius: BorderRadius.all(Radius.circular(20))
                  //     ),
                  //     child: Row(
                  //
                  //       children: [
                  //         SizedBox(width: 18,),
                  //
                  //         const Icon(Icons.calendar_month),
                  //         const SizedBox(width: 8,),
                  //
                  //         Text('21 Apr. bis 27. Apr.'),
                  //         SizedBox(width: 58,),
                  //         Container(
                  //           width: 2,
                  //           color: AppColors.container_color1,
                  //           height: MediaQuery.of(context).size.height*0.05,
                  //         ),
                  //         SizedBox(width: 10,),
                  //         Icon(Icons.bed),
                  //         SizedBox(width: 8,),
                  //
                  //         Text('1'),
                  //         Icon(Icons.man),
                  //         SizedBox(width: 8,),
                  //
                  //         Text('2'),
                  //       ],
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
             Divider(height: 1,color: AppFunctions.hexToColor("#B1B1B1"),),
            Padding(padding:const EdgeInsets.all(16.0),
            child: Text(AppConstants.line5,
            style: TextStyle(
              fontSize: 12.4,
              color: Colors.black
        
            ),
            ),),
            Divider(height: 1,color: AppFunctions.hexToColor("#B1B1B1"),),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Top offer per night',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 14.4,color: Colors.black
                  ),),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SvgPicture.asset(
                      //   color: Colors.black,
                      //   'assets/booking_com.svg',
                      //   semanticsLabel: 'booking_com',
                      // )
                      Image.asset(
                        'assets/book.png',
                        semanticLabel: 'booking',
                        // width: 100, // Set width as needed
                        // height: 100, // Set height as needed
                        // Additional properties can be added as needed
                      )
                      ,
                      SizedBox(width: 10,),
                      const Text('348€',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 21
                        ),)
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ColorTextBotton(text: 'Up to €20 cashback', color: AppColors.container_2, textColor: Colors.green)
        
                    ],
                  ),
        
                ],
              ),
            ),
            Divider(height: 1,color: AppFunctions.hexToColor("#B1B1B1"),),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SvgPicture.asset(
                      //   color: Colors.black,
                      //   'assets/booking_com.svg',
                      //   semanticsLabel: 'booking_com',
                      // )
                      Text('Expedia.de',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,fontSize: 15.4,color: Colors.black
                        ),),
                      SizedBox(width: 10,),
                      Text('348€',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 21
                        ),)
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ColorTextBotton(text: 'Up to €20 cashback', color: AppColors.container_2, textColor: Colors.green)
        
                    ],
                  ),
        
                ],
              ),
            ),
            Divider(height: 1,color: AppFunctions.hexToColor("#B1B1B1"),),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SvgPicture.asset(
                      //   color: Colors.black,
                      //   'assets/booking_com.svg',
                      //   semanticsLabel: 'booking_com',
                      // )
                  const Text('Hotels.com',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 15.4,color: Colors.black
                    ),),
                      Expanded(child: Container()),
                      const Text('348€'
                  ,style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.red
                    ),),

                      SizedBox(width: 10,),
                      Text('278€',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 21
                        ),)
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ColorTextBotton(text: 'Up to €20 cashback', color: AppColors.container_2, textColor: Colors.green)
        
                    ],
                  ),
        
                ],
              ),
            ),
        
        
          ],
        ),
      ),
    );
  }
}
