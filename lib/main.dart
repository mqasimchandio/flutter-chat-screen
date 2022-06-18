import 'package:flash_chat/screens/homescreen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: const Color(0xFF075E54),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: const Color(0xFF128C7E),
          ),
        ),
        home: const Homescreen());
  }
}
