
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/auto_img_slider.dart';

class TravelBookingDetailScreen extends StatelessWidget {
  const TravelBookingDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.ios_share_rounded),
          SizedBox(width: 5,),
          Icon(Icons.favorite_outline),

        ],

      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(height: 10,),
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
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2.0, // Adjust the width as needed
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.calendar_month),
                  Text('21 Apr. bis 27. Apr.'),
                  SizedBox(width: 8,),
                  VerticalDivider(
                    width: 2,
                    color: Colors.black,
                    thickness: 2,
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.bed),
                  Text('1'),
                  Icon(Icons.man),
                  Text('2'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
