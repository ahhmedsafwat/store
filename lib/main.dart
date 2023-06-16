import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotre/core/constant/color.dart';
import 'package:sotre/routes.dart';

import 'view/screen/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Playfair Display',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          bodySmall: TextStyle(
              height: 2,
              color: Appcolor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 17),
        ),
        primarySwatch: Colors.blue,
      ),
      home: OnBoarding(),
      routes: routes,
    );
  }
}
