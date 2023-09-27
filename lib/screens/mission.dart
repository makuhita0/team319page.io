import 'package:flutter/material.dart';
import 'package:team319website/screens/screen_components.dart';

class Mission extends StatelessWidget {
  const Mission({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            title(context),
            menuBar(context, FontWeight.w100, FontWeight.w100, FontWeight.w200),
            banner("Our Mission", "Team319가 그리는 미래"),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Team319는,\n그 뭐냐,\n그 뭐더라,\n아 진짜 뭐였지,\n뭐 그런 일 합니다.",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
