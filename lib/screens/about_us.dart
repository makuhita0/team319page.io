import 'dart:ui';

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
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: 500,
                    child: Image.network(forest),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              width: 500,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Team319는",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 200,
                ),
                const SizedBox(
                  width: 390,
                  child: Text(
                    "2023년에 시작한 친환경 제품 스타트업입니다.\n\n한국디지털미디어고등학교에 다니던,\n기숙사를 같이 쓰던 학생 네명이 모여 시작했습니다.\n\n우리 Team319는 레저용 제품에 환경을 오염시키는\n제품이 많이 있는 것을 느끼게 되었고\n그 문제를 해결하기 위해 친환경 수저 \"SSAC\"을 개발,\n판매 예정에 있습니다.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 1.0,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 400,
                  child: Text(
                    "Team319는 앞으로도 한 사람 한 사람의\n지속 가능한 생활을 위해\n노력할 것입니다.\n\nTeam319는 친환경 사회로의 변화를 주도하는 기업,\n지속 가능한 생활을 주도하는 기업이 되어\n새로운 사회의 평범한 생활을 디자인해 나가겠습니다.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 200,
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              alignment: Alignment.center,
              width: 500,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Contact Us",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            memberInfo("주민기", "최고 업무 총괄", "Min-Gi Joo", "wnalsrl@dimigo.hs.kr"),
            memberInfo(
                "강민준", "기획 / 재무 담당", "Minjoon Kang", "mjoon3788@dimigo.hs.kr"),
            memberInfo(
                "김도현", "기획 / 디자인 담당", "Dohyeon Kim", "makuhita0@dimigo.hs.kr"),
            memberInfo(
                "김율민", "환경 / 과학기술 담당", "Yulmin Kim", "mazeboyy@dimigo.hs.kr"),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }

  Row memberInfo(String krname, String part, String enname, String email) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.person_sharp,
          size: 40,
        ),
        const SizedBox(
          width: 20,
        ),
        SizedBox(
          width: 280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    krname,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    enname,
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              Text(
                part,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Email : $email",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
