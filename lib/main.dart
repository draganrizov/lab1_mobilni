import 'package:flutter/material.dart';
import 'package:raspored_chasevi/screens/DetailsPage.dart';
import 'package:raspored_chasevi/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RasporedIspiti-2025',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const MyHomePage(title: "Распоред за испити - 223149"),
        "/details": (context) => const DetailsPage(),
      },
    );
  }
}