import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tmdp_cashback_flutter/utils/AppColors.dart';
import 'package:tmdp_cashback_flutter/utils/app_constants.dart';
import 'package:tmdp_cashback_flutter/utils/app_functions/AppFunctions.dart';
import 'package:tmdp_cashback_flutter/utils/routes/app_routes.dart';

import '../../../widgets/CustomButton.dart';
import '../../../widgets/CustomIconButton.dart';
import '../../../widgets/custom_text_field1.dart';


class LoginRejisterScreen extends StatefulWidget {
   LoginRejisterScreen({super.key});
  String? selectedCountry = "Germany (+49)";
  TextEditingController phone_controller = TextEditingController();
  @override
  State<LoginRejisterScreen> createState() => _LoginRejisterScreenState();
}

class _LoginRejisterScreenState extends State<LoginRejisterScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in or register',
        style: TextStyle(
          fontWeight: FontWeight.w700,
            fontSize: 14.3,
            color: Colors.black
        ),),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4.0), // Adjust height of Divider
          child: Divider(
            color: AppColors.top_divider_grey, // Adjust color of Divider
            height: 1.0, // Adjust height of Divider
            thickness: 1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            
            children: [
              const SizedBox(height: 25,),
              SvgPicture.asset(
                color: Colors.black,
                'assets/logo2.svg',
                semanticsLabel: 'satta_logo',
                // Other properties like width, height, color, etc. can be adjusted here
              ),
              const SizedBox(height: 25,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color:  AppFunctions.hexToColor("#B1B1B1"),
                      width: 1.0, // Adjust the width as needed
                    ),
                    borderRadius: BorderRadius.circular(7)
                ),
                child:  Column(
                  children: [
                    InkWell(
                      onTap:(){
                        showCountryPickerDialog(context);
                      },
                        child: CustomTextField1(controller:widget.phone_controller,needText: true ,hint: widget.selectedCountry??"Germany (+49)", titleText: 'Country/Region',)),
                    const Divider(color: Colors.grey,height: 1,thickness: 1,),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 13),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,

                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                          isDense: true,
                          hintText: "Phone Number",
                        ),
                        style: TextStyle(
                          fontSize: 14.3
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              Text(
                AppConstants.line1,
                style:  TextStyle(
                  fontSize: 10.4,
                  fontWeight: FontWeight.w400,
                  color: AppFunctions.hexToColor("#020202"),
                ),),
              const SizedBox(height: 12,),
              CustomButton(fontSize:16.3,btnText: 'Continue', onPressed: (){

                Get.toNamed(AppRoute.complete_registration);
                print('clicked !!');
              },color: AppColors.primaryColor,),
               Row(
                children: [
                  Expanded(child: Divider(
                    color: AppFunctions.hexToColor("#B1B1B1"),
                    thickness: 1,
                    height: 1,
        
                  )),
        
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 22),
                    child: Text('oder',),
                  ),
        
                  Expanded(child: Divider(
                    color: AppFunctions.hexToColor("#B1B1B1"),
                    thickness: 1,
                    height: 1,
        
                  )),
                ],
              ),
               CustomIconTextButton(
                sufixIcon: Icon(Icons.email_outlined), text: 'Log in with your e-mail address',borderColor: AppFunctions.hexToColor("#5D5D5D"),
              ),
               CustomIconTextButton(
                sufixIcon: Icon(Icons.apple), text: 'Continue with Apple',borderColor: AppFunctions.hexToColor("#5D5D5D")
              ),
               CustomIconTextButton(
                sufixIcon:  SvgPicture.asset(
                  'assets/google.svg', // Path to your SVG file
                  width: 22,
                  height: 22,
                ), text: 'Continue with Google',borderColor: AppFunctions.hexToColor("#5D5D5D")
              )
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
