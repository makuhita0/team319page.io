import 'package:flutter/material.dart';
import 'package:team319website/screens/homescreen.dart';
import 'package:get/get.dart';
import 'package:team319website/screens/mission.dart';
import 'package:team319website/screens/product.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            title(context),
            menuBar(context),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black54,
                      ),
                      child: const Text(
                        "About Us",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 54,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Container title(BuildContext context) {
  return Container(
    height: 60,
    decoration: const BoxDecoration(
      color: Colors.black,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            Get.to(const HomeScreen());
          },
          child: const Text(
            "Team319",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    ),
  );
}

Container menuBar(BuildContext context) {
  return Container(
    height: 40,
    decoration: const BoxDecoration(
      color: Colors.black54,
    ),
    child: Row(
      //Row 화면 좌우로 넓게 만들어놓기 미래의 나야 부탁해
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 30,
        ),
        TextButton(
          onPressed: () {
            Get.to(const AboutUs());
          },
          child: const Text(
            "About Us",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Get.to(const Product());
          },
          child: const Text(
            "Product",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Get.to(const Mission());
          },
          child: const Text(
            "Our Mission",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
      ],
    ),
  );
}
