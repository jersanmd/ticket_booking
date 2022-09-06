import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/app_info_list.dart';
import 'package:ticket_booking/widgets/column_ticket_widget.dart';
import 'package:ticket_booking/widgets/line_dot_dot_widget.dart';
import 'package:ticket_booking/widgets/switch_button_widget.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketTabScreen extends StatelessWidget {
  const TicketTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.headlineStyle1),
              Gap(AppLayout.getHeight(20)),
              const SwitchButton(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15)
                ),
                child: TicketView(ticket: ticketList[0], isColor: true),
              ),
              const SizedBox(height: 1),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getHeight(20)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                        ColumnTicket(firstText: 'FlutterDB',secondText: 'Passenger', alignment:CrossAxisAlignment.start, isColor: true,),
                        ColumnTicket(firstText: '5221 3645678',secondText: 'passport', alignment: CrossAxisAlignment.end, isColor: true,)
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const LineDotDotWidget(sections: 15, isColor: true, width: 5),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                        ColumnTicket(firstText: '0055 444 77147',secondText: 'Number of E-ticket', alignment:CrossAxisAlignment.start, isColor: true,),
                        ColumnTicket(firstText: 'B2SG28',secondText: 'Booking Code', alignment: CrossAxisAlignment.end, isColor: true,)
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const LineDotDotWidget(sections: 15, isColor: true, width: 5),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/visa.png', scale: 60),
                                Text('*** 2462', style: Styles.headlineStyle3)
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text('Payment Method', style: Styles.headlineStyle4)
                          ],
                        ),
                        const ColumnTicket(firstText: '\$249.99',secondText: 'Price', alignment: CrossAxisAlignment.end, isColor: true,)
                      ],
                    ),
                    
                  ],
                ),
              ),
              const SizedBox(height: 1),
              Container(
                width: AppLayout.getScreenWidth(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppLayout.getHeight(21)),
                    bottomLeft: Radius.circular(AppLayout.getHeight(21))
                  ),
                  color: Colors.white
                ),
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getHeight(15)),
                child: BarcodeWidget(
                  data: 'https://github.com/jersanmd', 
                  barcode: Barcode.qrCode(
                    errorCorrectLevel: BarcodeQRCorrectionLevel.high,
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0]))
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ],
      )
    );
  }
}