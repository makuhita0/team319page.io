import 'package:flutter/material.dart';
import 'package:team319website/screens/screen_components.dart';

class SSACDetail extends StatelessWidget {
  const SSACDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            title(context),
            menuBar(context, FontWeight.w100, FontWeight.w200, FontWeight.w100),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SSAC",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            const Text(
              "일회용 수저와 다회용 수저의 장점을 모두 살린\n수저의 새로운 패러다임",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
