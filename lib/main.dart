import 'package:flutter/material.dart';
import 'package:sriyog/Screens/chart%20screens/city_chart.dart';
import 'package:sriyog/Screens/forgot_pass.dart';
import 'package:sriyog/Screens/navigation_bar.dart';
import 'package:sriyog/Screens/stats.dart';
import 'package:sriyog/Screens/unverified.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SRIYOG Dashboard',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 58, 183, 98)),
          useMaterial3: true,
        ),
        home: const CityChart());
  }
}
