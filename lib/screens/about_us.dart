import 'package:flutter/material.dart';
import 'package:team319website/screens/screen_components.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    //Define the gradient colors
    final gradientColors = [Colors.black, Colors.black12];

    //Create a gradient shader
    final Shader linearGradient = LinearGradient(
      colors: gradientColors,
    ).createShader(const Rect.fromLTWH(0, 0, 300, 50)); //Adjust Rect as needed
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            title(context),
            menuBar(context, FontWeight.w200, FontWeight.w100, FontWeight.w100),
            banner("About Us", "지속 가능한 내일에 기여하는 Team319"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "우리의 자연이",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.w800,
                          color: Colors.green,
                        ),
                      ),
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return linearGradient;
                        },
                        child: const Text(
                          "흑백사진으로 기억되지 않도록",
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                const SizedBox(
                  width: 120,
                ), //여기사진
              ],
            ),
          ],
        ),
      ),
    );
  }
}
