import 'package:flutter/material.dart';
import 'package:sotre/core/constant/color.dart';
import 'package:sotre/data/datasource/static/static.dart';
import 'package:sotre/view/widget/onboarding/custombtn.dart';
import 'package:sotre/view/widget/onboarding/customslider.dart';
import 'package:sotre/view/widget/onboarding/dotscontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: CustomSliderOnboard(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
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
