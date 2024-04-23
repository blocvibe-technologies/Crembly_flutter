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


class LoginRejisterScreen extends StatefulWidget {
   LoginRejisterScreen({super.key});
  String? selectedCountry = "Germany (+49)";
  @override
  State<LoginRejisterScreen> createState() => _LoginRejisterScreenState();
}

class _LoginRejisterScreenState extends State<LoginRejisterScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in or register'),
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
              SvgPicture.asset(
                color: Colors.black,
                'assets/crembly_logo.svg',
                semanticsLabel: 'satta_logo',
                // Other properties like width, height, color, etc. can be adjusted here
              ),
              const SizedBox(height: 25,),

              Container(
                // margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
          
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 1), // Grey stroke
                  borderRadius: BorderRadius.circular(7.0), // Rounded corners
                  color: Colors.white, // White background
                ),
          
          
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Country/Region",style: TextStyle(
                        fontSize: 11,
                        color: AppColors.disable_textcolor,
                    ),),
          
                    InkWell(
                      onTap: (){
                        showCountryPickerDialog(context);
                      },
                      child: Text(
                        widget.selectedCountry??"Germany (+49)",
                        style: const TextStyle(
                          color: Colors.black,
                            fontSize: 14.3
                        ),
                      ),
                    )
                 ,
          
                    const SizedBox(height: 8,),
                    const Divider(height: 1,thickness: 1,color: AppColors.disable_textcolor,),
                    // const SizedBox(height: 8,),
                    const TextField(
          
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Phone number', // Placeholder text
                      ),
                    ),
                    // const SizedBox(height: 8,),
          
                  ]
          
                ),
              ),
              SizedBox(height: 8,),
              Text(
                AppConstants.line1,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 10.4,
                    fontWeight: FontWeight.w400
                ),),
              const SizedBox(height: 12,),
              CustomButton(btnText: 'Continue', onPressed: (){

                Get.toNamed(AppRoute.complete_registration);
                print('clicked !!');
              },color: AppColors.primaryColor,),
              const Row(
                children: [
                  Expanded(child: Divider(
                    color: Colors.black,
                    thickness: 1,
                    height: 1,
        
                  )),
        
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 18),
                    child: Text('oder',),
                  ),
        
                  Expanded(child: Divider(
                    color: Colors.black,
                    thickness: 1,
                    height: 1,
        
                  )),
                ],
              ),
              const CustomIconTextButton(
                sufixIcon: Icons.email, text: 'Log in with your e-mail address',
              ),
              const CustomIconTextButton(
                sufixIcon: Icons.apple, text: 'Continue with Apple',
              ),
              const CustomIconTextButton(
                sufixIcon: Icons.g_mobiledata_rounded, text: 'Continue with Google',
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
