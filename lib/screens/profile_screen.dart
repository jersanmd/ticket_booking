import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/widgets/column_ticket_widget.dart';
import 'package:ticket_booking/widgets/line_dot_dot_widget.dart';

import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20), horizontal: AppLayout.getWidth(30)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/jersan.jpeg')
                  )
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Jersan Balago', style: Styles.headlineStyle1),
                  Text('Davao City', 
                    style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500
                    )), 
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(3)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3)
                    ),
                    child: Row(
                      children: [
                        Container (
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799)
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled, 
                            color: Colors.white, size: 15),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text('Premium Status ', 
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600
                          )),
                        Gap(AppLayout.getHeight(5))
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text('Edit',
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300)),
                  )
                ],
              )
              
            ],
          ),
          Divider(color: Colors.grey.shade300),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18, color: const Color(0xFF264CD2)
                    )
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25), vertical: AppLayout.getHeight(18)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.primaryColor, size: 27),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('You\'ve got a new award', style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
                        Text('You have 95 flights in a year', style: Styles.headlineStyle2.copyWith(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white.withOpacity(0.9)))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text('Accumulated miles', style: Styles.headlineStyle2),
          Gap(AppLayout.getHeight(20)),
          Column(
            children: [
              Text('192802', style: TextStyle(
                fontSize: 45,
                color: Styles.textColor,
                fontWeight: FontWeight.w600
              )),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Miles accrued', style: Styles.headlineStyle4.copyWith(fontSize: 16)),
                  Text('7 September 2022', style: Styles.headlineStyle4.copyWith(fontSize: 16))
                ],
              ),
              Gap(AppLayout.getHeight(10)),
              const LineDotDotWidget(sections: 12, isColor: true),
              Gap(AppLayout.getHeight(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ColumnTicket(firstText: '23 042', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: true),
                  ColumnTicket(firstText: 'Airline CO', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: true)
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ColumnTicket(firstText: '52 340', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: true),
                  ColumnTicket(firstText: 'Exuma', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: true),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ColumnTicket(firstText: '1 800', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: true),
                  ColumnTicket(firstText: 'Philippine Airlines', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: true),
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          const LineDotDotWidget(sections: 12, isColor: true),
          Gap(AppLayout.getHeight(20)),
          InkWell(
            onTap: (){},
            child: Center(child: Text('How to get more miles?', style: Styles.headlineStyle3.copyWith(color: Styles.primaryColor))))
        ],
      )
    );
  }
}