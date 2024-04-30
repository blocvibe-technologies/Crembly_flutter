
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdp_cashback_flutter/utils/AppColors.dart';
import 'package:tmdp_cashback_flutter/utils/app_constants.dart';
import 'package:tmdp_cashback_flutter/utils/app_functions/AppFunctions.dart';
import 'package:tmdp_cashback_flutter/utils/routes/app_routes.dart';
import '../../../widgets/CustomButton.dart';
import '../../../widgets/custom_text_field1.dart';
import '../../../widgets/text_box_button.dart';
import '../../../widgets/underline_text_widget.dart';

class CompleteRejistrationScreen extends StatefulWidget {
  CompleteRejistrationScreen({super.key});
  String? selectedCountry = "Germany (+49)";
  @override
  State<CompleteRejistrationScreen> createState() => _CompleteRejistrationScreenState();
}

class _CompleteRejistrationScreenState extends State<CompleteRejistrationScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // leading:IconButton(
        //   icon: const Icon(Icons.arrow_back_ios_new_rounded),
        //   onPressed: () {
        //     // Navigate back
        //     Get.back();
        //   },
        //   iconSize: 15, // Adjust the size of the back button
        // ),
        title: const Text('Complete registration',
        style: TextStyle(
          fontSize: 14.3,fontWeight: FontWeight.w700,
          color: Colors.black
        ),),
        bottom:  const PreferredSize(
          preferredSize: Size.fromHeight(4.0), // Adjust height of Divider
          child: Divider(
            color: AppColors.top_divider_grey, // Adjust color of Divider
            height: 4.0, // Adjust height of Divider
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(

            children: [
              const SizedBox(height: 35,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color:  AppColors.container_color1,
                      width: 1.0, // Adjust the width as needed
                    ),
                    borderRadius: BorderRadius.circular(AppConstants.default_radius)
                ),
                child: const Column(
                  children: [
                    CustomTextField1(hint: 'Satwinder', titleText: 'First Name',),
                    Divider(color: AppColors.container_color1,height: 1,thickness: 1,),
                    CustomTextField1(hint: 'Shergill', titleText: 'Last Name',),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Text(
                AppConstants.line2,
                style:  TextStyle(
                    color: AppFunctions.hexToColor("#5D5D5D"),
                    fontSize: 10.4,
                    fontWeight: FontWeight.w400
                ),),
              const SizedBox(height: 15,),

              const TextBoxButton(text: 'Birthday (DD.MM.YYYY)',borderColor: AppColors.container_color1,),
              const SizedBox(height: 8,),
              Text(
                AppConstants.line3,
                style: TextStyle(
                    color: AppFunctions.hexToColor("#5D5D5D"),
                    fontSize: 10.4,
                    fontWeight: FontWeight.w400
                ),),

              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color:   AppColors.container_color1,
                      width: 1.0, // Adjust the width as needed
                    ),
                    borderRadius: BorderRadius.circular(7)
                ),
                child: const CustomTextField1(hint: 'satwindersinghasr2@gmail.com', titleText: 'E-mail address',),
              ),
              const SizedBox(height: 8,),



              Text(
                AppConstants.line4,
                style: TextStyle(
                    color: AppFunctions.hexToColor("#5D5D5D"),
                    fontSize: 10.4,
                    fontWeight: FontWeight.w400
                ),),

              const SizedBox(height: 40,),
              UnderlinedText(data: AppConstants.term_policy, wordsToUnderline: ['terms' ,'of', 'use', 'Data', 'protection', 'declaration'],),
              const SizedBox(height: 30,),
               CustomButton(btnText: 'Agree and Continue',onPressed: (){
                // Get.toNamed(AppRoute.home);
                Get.toNamed(AppRoute.bottom_nav_bar);
              },
               fontSize: 16.3,font_weight: FontWeight.w600,)
            ],
          ),
        ),
      ),
    );
  }
  void showCountryPickerDialog(BuildContext context) {
    showCountryPicker(
      context: context,
      onSelect: (country){
        setState(() {
          widget.selectedCountry = "${country.name+ " "+AppFunctions.formatCountryCode(country.phoneCode)}";
        });
        // print(country.name+" "+country.countryCode+ " "+country.displayName +" "+ country.phoneCode);
      },
    );
  }
}
