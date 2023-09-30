import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team319website/screens/screen_components.dart';
import 'package:team319website/screens/ssac_detail.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    String eximage =
        "https://images-na.ssl-images-amazon.com/images/I/51H0SYt5a1L._AC_UL75_SR75,75_.jpg";
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            title(context),
            menuBar(context, FontWeight.w100, FontWeight.w200, FontWeight.w100),
            banner("Product", "Team319의 친환경 제품을 살펴보세요"),
            productInfo(eximage),
          ],
        ),
      ),
    );
  }

  InkWell productInfo(String image) {
    return InkWell(
      onTap: () {
        Get.to(const SSACDetail());
      },
      child: Container(
        height: 230,
        width: 210,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          color: const Color.fromARGB(255, 241, 241, 241),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 160,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const Text(
              "SSAC",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
