import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro_app/third_page.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
      getPages: [
        GetPage(
          name: '/third', 
          page: () => const ThirdPage(),
          // transition: Transition.downToUp
          // transition: Transition.circularReveal,
          // transitionDuration: const Duration(seconds: 3),
        ),
        GetPage(
          name: '/third2',  // 똑같은 페이지 호출시 다른 효과를 줄 수 있다.
          page: () => const ThirdPage(),
          // transition: Transition.downToUp
          transition: Transition.circularReveal,
          transitionDuration: const Duration(seconds: 3),
        ),
      ],
    );
  }
}
