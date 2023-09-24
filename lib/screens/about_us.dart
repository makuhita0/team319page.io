import 'package:flutter/material.dart';
import 'package:team319website/screens/screen_components.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});
  final String forest =
      "https://cdn.pixabay.com/photo/2015/12/01/20/28/forest-1072828_1280.jpg";

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
                          "흑백사진으로 기억되지 않도록,",
                          style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Team319는 지속 가능한 내일에 기여하기 위해 노력합니다.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: SizedBox(
                    width: 500,
                    child: Image.network(forest),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
