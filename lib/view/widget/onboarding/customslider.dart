import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotre/controller/onboardingcontroller.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnboard extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChange(value);
      },
      physics: const BouncingScrollPhysics(),
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Text(
              onBoardingList[index].title!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 80),
            Image(
              width: 200,
              height: 230,
              fit: BoxFit.contain,
              image: AssetImage(onBoardingList[index].img!),
            ),
            const SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                onBoardingList[index].body!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    height: 2,
                    color: Appcolor.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ],
        );
      },
    );
  }
}
