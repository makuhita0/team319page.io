import 'package:flutter/material.dart';
import 'package:team319website/screens/homescreen.dart';
import 'package:team319website/screens/about_us.dart';
import 'package:team319website/screens/mission.dart';
import 'package:team319website/screens/product.dart';
import 'package:get/get.dart';

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

Container menuBar(BuildContext context, fw1, fw2, fw3) {
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
          child: Text(
            "About Us",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: fw1,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Get.to(const Product());
          },
          child: Text(
            "Product",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: fw2,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Get.to(const Mission());
          },
          child: Text(
            "Our Mission",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: fw3,
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

Column banner(String name, String msge) {
  return Column(
    children: [
      Container(
        height: 100,
        decoration: const BoxDecoration(color: Colors.black12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  msge,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 100,
      )
    ],
  );
}
