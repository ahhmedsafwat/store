import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotre/controller/onboardingcontroller.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomdotsOnboarding extends StatelessWidget {
  const CustomdotsOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBoardingList.length,
              (index) => AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                duration: const Duration(milliseconds: 200),
                width: controller.currntPage == index ? 20 : 5,
                height: 6,
                decoration: BoxDecoration(
                    color: Appcolor.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )
          ],
        );
      },
    );
  }
}
