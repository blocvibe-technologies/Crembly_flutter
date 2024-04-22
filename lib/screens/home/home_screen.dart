
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdp_cashback_flutter/utils/routes/app_routes.dart';

import '../../utils/AppColors.dart';


class HomeScreen extends StatelessWidget {

  String generateText(int index) {
    String text;
    switch (index) {
      case 0:
        text = "Initial\nStock";
        break;
      case 1:
        text = "Raw Material\nEntry";
        break;
      case 2:
        text = "Product\nExit";
        break;
      case 3:
        text = "In Production\nCycle";
        break;
      default:
        text = "Unknown";
        break;
    }
    return text;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Add your onPressed action here
                Get.toNamed(AppRoute.settings);
                // GoRouter.of(context).pushNamed(MyAppRouteConstants.settingsRouteName);
              },
            ),
          ],
          title: const Text(
            textAlign: TextAlign.center,
            'Rebar Performance',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1.0), // Set the height of the divider
            child: Divider(
              color: Colors.yellow,
              height: 10, // Set the height of the divider
              thickness: 8,
            ),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Divider(
              //   height: 3,
              //   color: Colors.yellow,
              // ),
              // const SizedBox(height: 30),
              const Text(
                "Production Performance",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,

                    fontSize: 22),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1.1,
                      child: InkWell(
                        onTap: ()=>{
                          // Get.toNamed(MyRoute.add_report_bottom_nav)
                          // GoRouter.of(context).pushamed(MyAppRouteConstants.addReportRouteName)
                        },
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            color: AppColors.activeBoxColor,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10.0),
                              right: Radius.circular(10.0),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_circle_outline,
                                size: 30,
                              ),
                              Text(
                                "Add Report",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.textColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              )],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   width: 16,
                  // ),

                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Inventry Balance",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,

                    fontSize: 22),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(4, (index) {
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10.0),
                          right: Radius.circular(10.0),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        generateText(index),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ));
  }
}


