import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/widgets/double_text_widget.dart';
import 'package:ticket_booking/widgets/icon_text_widget.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
            Gap(AppLayout.getHeight(40)),
            Text("What are \nyou looking for?", style: Styles.headlineStyle1.copyWith(fontSize: AppLayout.getWidth(35))),
            Gap(AppLayout.getHeight(20)),
            FittedBox(
              child: Container(
                padding: const EdgeInsets.all(3.5),
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F7FD),
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                ),
                child: Row(
                  children: [
                    Container(
                      width: size.width*0.44,
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50)))
                      ),
                      child: const Center(child: Text('Airline Tickets')),
                    ),
                    Container(
                      width: size.width*0.44,
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF4F7FD),
                        borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50)))
                      ),
                      child: const Center(child: Text('Hotels')),
                    )
                  ],
                ),
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            const AppIconText(icon: Icons.flight_takeoff, text: 'Departure'),
            Gap(AppLayout.getHeight(20)),
            const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
            Gap(AppLayout.getHeight(25)),
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                color: const Color(0xD91130CE),
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Find Tickets', style: Styles.textStyle.copyWith(color: Colors.white))
                ],
              ),
            ),
            Gap(AppLayout.getHeight(40)),
            const AppDoubleTextWidget(bigText: 'Upcoming Flights', smallText: 'View All'),
            Gap(AppLayout.getHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppLayout.getHeight(425),
                  width: size.width*0.42,
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/hotels/1.jpg')
                          )
                        ),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Text("20% Discount on the early booking of this flight.", style: Styles.headlineStyle2)
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width*0.44,
                          height: AppLayout.getHeight(200),
                          decoration: BoxDecoration(
                            color: const Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                          ),
                          padding: EdgeInsets.all(AppLayout.getHeight(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Discount \nfor survey", style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
                              Gap(AppLayout.getHeight(10)),
                              Text("Take the survey about our services and get discount", style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white)),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -45,
                          top: -45,
                          child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color: const Color(0xFF189999)),
                            color: Colors.transparent
                          ),
                        ))
                      ],
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Container(
                      width: size.width*0.44,
                      height: AppLayout.getHeight(210),
                      padding: EdgeInsets.all(AppLayout.getHeight(15)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                        color: const Color(0xFFEC6545)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Take Love", style: Styles.headlineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                          Gap(AppLayout.getHeight(12)),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '😍',
                                  style: TextStyle(fontSize: 30)
                                ),
                                TextSpan(
                                  text: '🥰',
                                  style: TextStyle(fontSize: 50)
                                ),
                                TextSpan(
                                  text: '😘',
                                  style: TextStyle(fontSize: 30)
                                )
                              
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
        ],
      )
    );
  }
}