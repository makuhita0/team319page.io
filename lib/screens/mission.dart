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
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "자연,",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                    color: Colors.green,
                  ),
                ),
                Text(
                  "다음 세대에도\n그 다음 세대에도\n이어져야 하니까.",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
