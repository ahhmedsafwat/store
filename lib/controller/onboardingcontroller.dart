import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotre/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChange(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currntPage = 0;
  @override
  next() {
    currntPage++;
    if (currntPage > onBoardingList.length - 1) {
      print('page limit');
    } else {
      pageController.animateToPage(currntPage,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    currntPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
