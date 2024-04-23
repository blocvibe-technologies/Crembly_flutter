
import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tmdp_cashback_flutter/utils/AppColors.dart';
import 'package:tmdp_cashback_flutter/utils/app_constants.dart';
import 'package:tmdp_cashback_flutter/utils/app_functions/AppFunctions.dart';
import 'package:tmdp_cashback_flutter/utils/routes/app_routes.dart';
import '../../../widgets/CustomButton.dart';
import '../../../widgets/app_text_field.dart';
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
        title: const Text('Complete registration'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4.0), // Adjust height of Divider
          child: Divider(
            color: Colors.black, // Adjust color of Divider
            height: 4.0, // Adjust height of Divider
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(

            children: [
              const SizedBox(height: 25,),


              Container(
                // margin: const EdgeInsets.all(8),

                width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 1), // Grey stroke
                  borderRadius: BorderRadius.circular(7.0), // Rounded corners
                  color: Colors.white, // White background
                ),


                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Wrap(
                          children: [
                            Text('First Name'),
                            TextField(
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.zero,
                                isDense: true,
                                hintText: "satwinder",
                              ),
                            ),
                          ],
                        ),
                      ),

                      Divider(height: 1,thickness: 1,color: AppColors.disable_textcolor,),
                      // const SizedBox(height: 8,),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Wrap(
                          children: [
                            Text('Surname'),
                            TextField(
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.zero,
                                isDense: true,
                                hintText: "shergill",
                              ),
                            ),
                          ],
                        ),
                      ),


                    ]

                ),
              ),
              const SizedBox(height: 8,),
              Text(
                AppConstants.line2,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 10.4,
                    fontWeight: FontWeight.w400
                ),),
              const SizedBox(height: 12,),

              TextBoxButton(text: 'dlsffoaisjf',),
              const SizedBox(height: 8,),
              Text(
                AppConstants.line3,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 10.4,
                    fontWeight: FontWeight.w400
                ),),

              const SizedBox(height: 8,),
              const AppTextField(titleText: 'E-mail address', hintText: 'satwinder@gmail.com',),

              const SizedBox(height: 8,),
              Text(
                AppConstants.line4,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 10.4,
                    fontWeight: FontWeight.w400
                ),),

              const SizedBox(height: 20,),
              UnderlinedText(data: AppConstants.term_policy, wordsToUnderline: ['terms' ,'of', 'use', 'Data', 'protection', 'declaration'],),
              const SizedBox(height: 30,),
               CustomButton(btnText: 'Agree and Continue',onPressed: (){
                // Get.toNamed(AppRoute.home);
                Get.toNamed(AppRoute.bottom_nav_bar);
              },)
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
