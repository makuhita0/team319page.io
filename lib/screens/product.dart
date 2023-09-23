import 'package:flutter/material.dart';
import 'package:team319website/screens/homescreen.dart';
import 'package:get/get.dart';
import 'package:team319website/screens/mission.dart';
import 'package:team319website/screens/about_us.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          title(context),
          menuBar(context),
        ],
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
