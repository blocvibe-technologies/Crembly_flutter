import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdp_cashback_flutter/utils/AppColors.dart';
import 'package:tmdp_cashback_flutter/utils/app_constants.dart';
import 'package:tmdp_cashback_flutter/widgets/CustomButton.dart';

import '../../utils/app_functions/AppFunctions.dart';
import '../../widgets/custom_text_field1.dart';
import '../../widgets/custom_text_field2.dart';

class PayOutScreen extends StatelessWidget {
  const PayOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
        
                children: [
                  const Row(
                    children: [
                      Text(
                        'Payout',
                        style:
                            TextStyle(fontWeight: FontWeight.w700, fontSize: 26.4,color: Colors.black),
                      ),
                    ],
                  ),
                  const Text(
                    'We need the following information to give you your to be able to pay out money',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.4,color: Colors.black),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:  AppColors.container_color1,
                        width: 1.0, // Adjust the width as needed
                      ),
                      borderRadius: BorderRadius.circular(7)
                    ),
                    child: const Column(
                      children: [
                        CustomTextField1(hint: 'Satwinder', titleText: 'First Name',),
                        Divider(color:AppColors.container_color1,height: 1,thickness: 1,),
                        CustomTextField1(hint: 'Shergill', titleText: 'Last Name',),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color:  AppColors.container_color1,
                          width: 1.0, // Adjust the width as needed
                        ),
                        borderRadius: BorderRadius.circular(7)
                    ),
                    child: const CustomTextField1(hint: 'Gali No 21', titleText: 'Street, No.',),
                  ),
                  const SizedBox(height: 8,),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align children at the start of the row
                    children: [
                      Flexible(
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.container_color1,
                                  width: 1.0, // Adjust the width as needed
                                ),
                                borderRadius: BorderRadius.circular(7)
                            ),
                            child: const CustomTextField1(hint: '143245', titleText: 'Postal code')),
                      ),
                      const SizedBox(width: 8), // Add horizontal spacing between text fields
                      Flexible(
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color:  AppColors.container_color1,
                                  width: 1.0, // Adjust the width as needed
                                ),
                                borderRadius: BorderRadius.circular(7)
                            ),
                            child: const CustomTextField1(hint: 'amritsar,punjab', titleText: 'Location')),
                      ),
                    ],
                  )
        
        
                ],
              ),
            ),
            // const SizedBox(height: 12),
            const Divider(
              height: 1,
              color: AppColors.container_color1,
            ),
            // const SizedBox(height: 12),
             Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: 52,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color:  AppColors.container_color1,
                          width: 1.0, // Adjust the width as needed
                        ),
                        borderRadius: BorderRadius.circular(7)
                    ),
                    child: const CustomTextField2(hint: 'IBAN',),
                  ),
                  const SizedBox(height: 8,),
                  Text(AppConstants.line6,style: TextStyle(
                    fontSize: 12.59,
                    color: AppFunctions.hexToColor("#5D5D5D")
                  ),),
                  const SizedBox(height: 18,),
        
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color:  AppColors.container_color1,
                            width: 1.0, // Adjust the width as needed
                          ),
                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: const CustomTextField1(hint: '...', titleText: 'Available credit: €0')),
                  const SizedBox(height: 12,),
                  CustomButton(btnText: 'Pay off',color: AppColors.primaryColor,onPressed: (){
                    Get.back();
                  },font_weight: FontWeight.w600,fontSize: 16.3,),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
