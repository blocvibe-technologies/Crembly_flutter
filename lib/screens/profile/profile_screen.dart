
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmdp_cashback_flutter/utils/AppColors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: EdgeInsets.all(12.0),
        child: FractionallySizedBox(
          heightFactor: 0.456,
          child: Column(
            children: [
              Container(
                color: Colors.red,
                height: 30,
                // Add other properties or child widgets as needed
              ),
              Container(
                color: Colors.yellow,
                height: 10,
                // Add other properties or child widgets as needed
              ),
            ],
          ),
        )
        ,
        // child: Column(
        //
        //   children: [
        //     Text('Saved',style: TextStyle(
        //         fontSize: 26,
        //         fontWeight: FontWeight.w700,
        //         color: Colors.black
        //     ),),
        //     SizedBox(height: 30,),
        //     // Container(
        //     //   decoration: BoxDecoration(
        //     //     border: Border.all(
        //     //       color: Colors.black,
        //     //       width: 2.0, // Adjust the width as needed
        //     //     ),
        //     //     borderRadius: BorderRadius.circular(8)
        //     //   ),
        //     //   height: MediaQuery.of(context).size.height*0.275,
        //     //
        //     //   child: Column(
        //     //     children: [
        //     //       Container(
        //     //         height: MediaQuery.of(context).size.height*0.200,
        //     //         color: AppColors.primaryColor,
        //     //         child: const Wrap(
        //     //           children: [
        //     //
        //     //             Row(
        //     //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     //               children: [
        //     //                 Text('20 € Cashback',style: TextStyle(
        //     //                     fontSize: 14,
        //     //                     fontWeight: FontWeight.w400,
        //     //                     color: Colors.black
        //     //                 ),),
        //     //                 Text('Total revenue',style: TextStyle(
        //     //                     fontSize: 11,
        //     //                     fontWeight: FontWeight.w500,
        //     //                     color: Colors.black
        //     //                 ),),
        //     //               ],
        //     //             ),
        //     //             Row(
        //     //               children: [
        //     //                 Expanded(
        //     //                 child: Text('0,00€',textAlign:TextAlign.end,style: TextStyle(
        //     //                     fontSize: 13,
        //     //                     fontWeight: FontWeight.w700,
        //     //                     color: Colors.black
        //     //                 ),),
        //     //               ),
        //     //             ],)
        //     //           ],
        //     //         ),
        //     //       ),
        //     //       Container(
        //     //         height: MediaQuery.of(context).size.height*0.075,
        //     //         color: AppColors.yellow,
        //     //         child: const Column(
        //     //           children: [
        //     //
        //     //             Row(
        //     //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     //               children: [
        //     //                 Text('20 € Cashback',style: TextStyle(
        //     //                     fontSize: 14,
        //     //                     fontWeight: FontWeight.w400,
        //     //                     color: Colors.black
        //     //                 ),),
        //     //                 Text('Total revenue',style: TextStyle(
        //     //                     fontSize: 11,
        //     //                     fontWeight: FontWeight.w500,
        //     //                     color: Colors.black
        //     //                 ),),
        //     //               ],
        //     //             ),
        //     //             Row(
        //     //               children: [
        //     //                 Expanded(
        //     //                   child: Text('0,00€',textAlign:TextAlign.end,style: TextStyle(
        //     //                       fontSize: 13,
        //     //                       fontWeight: FontWeight.w700,
        //     //                       color: Colors.black
        //     //                   ),),
        //     //                 ),
        //     //               ],)
        //     //           ],
        //     //         ),
        //     //       ),
        //     //     ],
        //     //   ),
        //     // ),
        //
        //
        //
        //
        //
        //
        //   ],
        // ),
      ),
    );
  }
}
