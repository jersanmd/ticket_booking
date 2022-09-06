import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket Booking App',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const BottomBar()
    );
  }
}