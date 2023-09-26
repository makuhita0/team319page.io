import 'package:flutter/material.dart';
import 'package:team319website/screens/homescreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "Pretendard"),
      home: const Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
