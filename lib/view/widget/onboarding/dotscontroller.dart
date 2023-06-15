import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomdotsOnboarding extends StatelessWidget {
  const CustomdotsOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          onBoardingList.length,
          (index) => AnimatedContainer(
            margin: const EdgeInsets.only(right: 5),
            duration: const Duration(milliseconds: 900),
            width: 6,
            height: 6,
            decoration: BoxDecoration(
                color: Appcolor.primaryColor,
                borderRadius: BorderRadius.circular(10)),
          ),
        )
      ],
    );
  }
}
