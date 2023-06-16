import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotre/controller/onboardingcontroller.dart';
import '../../../core/constant/color.dart';

class CustomBtnOnboarding extends GetView<OnBoardingControllerImp> {
  const CustomBtnOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          controller.next();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Appcolor.primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
        ),
        child: const Text(
          'Continue',
        ),
      ),
    );
  }
}
