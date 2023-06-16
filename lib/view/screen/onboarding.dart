import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotre/controller/onboardingcontroller.dart';
import 'package:sotre/view/widget/onboarding/custombtn.dart';
import 'package:sotre/view/widget/onboarding/customslider.dart';
import 'package:sotre/view/widget/onboarding/dotscontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 3,
              child: CustomSliderOnboard(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Spacer(),
                    CustomdotsOnboarding(),
                    Spacer(),
                    CustomBtnOnboarding(),
                    Spacer()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
