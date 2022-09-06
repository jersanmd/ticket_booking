import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/thick_container.dart';

class TicketView extends StatelessWidget {

  final Map<String, dynamic> ticket;

  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {

    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [

            //Blue Card Ticket
            Container (
              decoration: const BoxDecoration(
                color:  Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'], style: Styles.headlineStyle3.copyWith(color: Colors.white)),
                      const Spacer(),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constrainst) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constrainst.constrainWidth()/6).floor(), (index) => 
                                        SizedBox(
                                          width: AppLayout.getWidth(3),
                                          height: AppLayout.getHeight(1),
                                          child: const DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Colors.white
                                            )),
                                        )
                                      ),
                                  );
                                },
                              ),
                            ),
                            Center(child: Transform.rotate(angle: 1.5, child: const Icon(Icons.local_airport_rounded, color: Colors.white))),
                          ]
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text(ticket['to']['code'], style: Styles.headlineStyle3.copyWith(color: Colors.white))
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(ticket['from']['name'], style: Styles.headlineStyle4.copyWith(color: Colors.white)),
                    ),
                    Text(ticket['flying_time'], style: Styles.headlineStyle4.copyWith(color: Colors.white)),
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(ticket['to']['name'], textAlign: TextAlign.end,style: Styles.headlineStyle4.copyWith(color: Colors.white)),
                    ),
                  ],)
                ],
              ),
            ),

            // Red Card Ticket - Top Part
            Container(
              color: Styles.orangeColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(12)),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constrainst) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constrainst.constrainWidth()/15).floor(), (index) => 
                                SizedBox(
                                  width: AppLayout.getWidth(3),
                                  height:  AppLayout.getHeight(1),
                                  child: const DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.white
                                    )),
                                )
                              ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )
                      ),
                    ),
                  )
                ]
              ),
            ),

            // Red Card Ticket - Bottom Part
            Container(
              padding: const EdgeInsets.only(top: 10, right: 16, left: 16, bottom: 16),
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'], style: Styles.headlineStyle3.copyWith(color: Colors.white)),
                          const Gap(5),
                          Text('Date', style: Styles.headlineStyle4.copyWith(color: Colors.white)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'], style: Styles.headlineStyle3.copyWith(color: Colors.white)),
                          const Gap(5),
                          Text('Departure Time', style: Styles.headlineStyle4.copyWith(color: Colors.white)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(), style: Styles.headlineStyle3.copyWith(color: Colors.white)),
                          const Gap(5),
                          Text('Number', style: Styles.headlineStyle4.copyWith(color: Colors.white)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}