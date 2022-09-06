import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class LineDotDotWidget extends StatelessWidget {

  final bool? isColor;
  final int sections;
  final double width;

  const LineDotDotWidget({super.key, this.isColor, required this.sections, this.width=3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constrainst) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constrainst.constrainWidth()/sections).floor(), (index) => 
              SizedBox(
                width: AppLayout.getWidth(width),
                height: AppLayout.getHeight(1),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300
                  )),
              )
            ),
        );
      },
    );
  }
}