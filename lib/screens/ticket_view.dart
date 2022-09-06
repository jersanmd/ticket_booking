import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/line_dot_dot_widget.dart';
import 'package:ticket_booking/widgets/thick_container.dart';

import '../widgets/column_ticket_widget.dart';

class TicketView extends StatelessWidget {

  final Map<String, dynamic> ticket;
  final bool? isColor;

  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {

    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true? 167:169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [

            //Blue Card Ticket
            Container (
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799): Colors.white,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'], 
                      style: isColor == null ? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3),
                      const Spacer(),
                      isColor == null ? const ThickContainer() : const ThickContainer(isColor: true),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: const LineDotDotWidget(sections: 6)
                            ),
                            Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor==null ? Colors.white:const Color(0xFF8ACCF7) ))),
                          ]
                        ),
                      ),
                      isColor == null ? const ThickContainer() : const ThickContainer(isColor: true),
                      const Spacer(),
                      Text(ticket['to']['code'], 
                        style: isColor == null ? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3)
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(ticket['from']['name'], style: isColor == null ? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4),
                    ),
                    Text(ticket['flying_time'], style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4),
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(ticket['to']['name'], textAlign: TextAlign.end,style: isColor == null ? Styles.headlineStyle4.copyWith(color: Colors.white): Styles.headlineStyle4),
                    ),
                  ],)
                ],
              ),
            ),

            // Red Card Ticket - Top Part
            Container(
              color: isColor==null ? Styles.orangeColor : Colors.white,
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
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: isColor == null ? Colors.white : Colors.grey.shade300
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
                color: isColor==null ? Styles.orangeColor: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null? 21: 0), bottomRight: Radius.circular(isColor==null?21:0))
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnTicket(firstText: ticket['date'], secondText: 'Date', alignment: CrossAxisAlignment.start, isColor: isColor),
                      ColumnTicket(firstText: ticket['departure_time'], secondText: 'Departure Time', alignment: CrossAxisAlignment.start, isColor: isColor),
                      ColumnTicket(firstText: ticket['number'].toString(), secondText: 'Number', alignment: CrossAxisAlignment.start, isColor: isColor)
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