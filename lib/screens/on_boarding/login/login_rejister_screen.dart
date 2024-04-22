import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tmdp_cashback_flutter/utils/AppColors.dart';
import 'package:tmdp_cashback_flutter/utils/app_constants.dart';

import '../../../widgets/CustomButton.dart';

class LoginRejisterScreen extends StatefulWidget {
   LoginRejisterScreen({super.key});
  String? selectedCountry = "US";
  @override
  State<LoginRejisterScreen> createState() => _LoginRejisterScreenState();
}

class _LoginRejisterScreenState extends State<LoginRejisterScreen> {
  @override
  Widget build(BuildContext context) {
    bool _showCountryCodePicker = false;
    final phone_controller = TextEditingController() ;
    var _selectedCountry = widget.selectedCountry;
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
      body: Column(
        children: [
          const SizedBox(height: 25,),
          SvgPicture.asset(
            color: Colors.black,
            'assets/crembly_logo.svg',
            semanticsLabel: 'satta_logo',
            // Other properties like width, height, color, etc. can be adjusted here
          ),
          const SizedBox(height: 15,),

          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 1), // Grey stroke
              borderRadius: BorderRadius.circular(7.0), // Rounded corners
              color: Colors.white, // White background
            ),


            child: Column(
              children: [
                const Text("Country/Region",style: TextStyle(
                    fontSize: 11,
                    color: AppColors.disable_textcolor
                ),),

                InkWell(
                  onTap: (){

                  },
                  child: Row(

                    children: [
                      Text(
                        widget.selectedCountry??"Us",
                        style: const TextStyle(
                          color: Colors.black
                        ),
                      ),
                      // CountryCodePicker(
                      //
                      //   showFlag: false,
                      //   onChanged: (CountryCode countryCode) {
                      //     print('Selected country: ${countryCode.name}');
                      //     print('Country dialing code: ${countryCode.dialCode}');
                      //     setState(() {
                      //        widget.selectedCountry = countryCode.name;
                      //     });
                      //   },
                      //
                      //   // Additional properties of the CountryCodePicker can be added here
                      // )
                    ],
                  ),
                )
             ,

                const SizedBox(height: 8,),
                const Divider(height: 1,thickness: 1,color: AppColors.disable_textcolor,),
                const SizedBox(height: 8,),
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
          Text(
            AppConstants.line1,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 10.4,
                fontWeight: FontWeight.w400
            ),),
          const SizedBox(height: 8,),
          Container(
            height: 48,
            width: MediaQuery.of(context).size.width,
            child:CustomButton(btnText: 'Continue', onPressed: (){},color: AppColors.primaryColor,)
             ,
          )
        ],
      ),
    );
  }
}
