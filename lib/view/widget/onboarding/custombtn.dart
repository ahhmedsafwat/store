import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomBtnOnboarding extends StatelessWidget {
  const CustomBtnOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Appcolor.primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
        ),
        child: const Text('Continue'),
      ),
    );
  }
}
