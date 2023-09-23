import 'package:flutter/material.dart';
import 'package:team319website/screens/about_us.dart';
import 'package:get/get.dart';
import 'package:team319website/screens/mission.dart';
import 'package:team319website/screens/product.dart';
import 'package:team319website/screens/screen_components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            title(context),
            menuBar(context),
            Container(
              height: 250,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  slogan(),
                ],
              ),
            ),
            briefProductIntroduce(),
            const SizedBox(
              height: 60,
            ),
            ourStory(),
          ],
        ),
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
            onHover: (hover) {},
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

  Column slogan() {
    return const Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          "환경으로 환경 문제를 해결하다!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            color: Colors.green,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "친환경 제품 스타트업, Team319",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text("Pictures PLZ"),
      ],
    );
  }

  Column briefProductIntroduce() {
    return Column(
      children: [
        const Text(
          "SSAC",
          style: TextStyle(
            fontSize: 56,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Text(
          "Sustainable Spoon and Chopsticks",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
        ),
        const SizedBox(height: 5),
        const Text(
          "SSAC은 기존 플라스틱 숟가락과 다회용 숟가락의 장점을 더하고,",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 1,
        ),
        const Text(
          "보다 활용성을 높인 새로운 개념의 친환경 수저입니다",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 200,
            ),
            Column(
              children: [
                const SizedBox(height: 100),
                Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    "Hello, World!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text(
                    "He11o, W0r1d!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 200,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        FilledButton(
          onPressed: () {
            Get.to(const Product());
          },
          child: const Text(
            "더 알아보기 →",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        )
      ],
    );
  }

  Column ourStory() {
    return const Column(
      children: [
        Text(
          "Our Story",
          style: TextStyle(
            fontSize: 56,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
