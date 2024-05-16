import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Portfolio",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}