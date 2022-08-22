import 'package:flutter/material.dart';
import 'package:sushirestaurant/browser/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sushi',
      debugShowCheckedModeBanner: false,
      home: const WebLandingPage(),
    );
  }
}
