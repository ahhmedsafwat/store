import 'package:flutter/material.dart';
import 'package:sotre/core/constant/color.dart';
import 'package:sotre/data/datasource/static/static.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: onBoardingList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Text(
                  onBoardingList[index].title!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 80),
                Image(
                  width: 200,
                  height: 250,
                  fit: BoxFit.contain,
                  image: AssetImage(onBoardingList[index].img!),
                ),
                const SizedBox(height: 80),
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
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
