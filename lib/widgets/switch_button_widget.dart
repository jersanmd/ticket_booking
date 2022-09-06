import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class SwitchButton extends StatelessWidget {
  final String firstTab;
  final String secondTab;

  const SwitchButton({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {

    final size = AppLayout.getSize(context);
    return FittedBox(
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
                      child: Center(child: Text(firstTab)),
                    ),
                    Container(
                      width: size.width*0.44,
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF4F7FD),
                        borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50)))
                      ),
                      child: Center(child: Text(secondTab)),
                    )
                  ],
                ),
              ),
            );
  }
}