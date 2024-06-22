import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List imageName;
  late int currentImage;

  @override
  void initState() {
    super.initState();
    imageName = [
      'flower_01',
      'flower_02',
      'flower_03',
      'flower_04',
      'flower_05',
      'flower_06',
    ];
    currentImage = 0;

    // Timer 설치
    Timer.periodic(const Duration(seconds: 1), (timer) {  // milliseconds: 속도 조절해서 애니메이션도 만들기도 함.
      changeImage();
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1초마다 이미지 무한 반복'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${imageName[currentImage]}.png',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            Image.asset('images/${imageName[currentImage]}.png',
              width: 400,
            )
          ],
        )),
    );
  }
  // Functions --------------
  changeImage(){
    currentImage ++ ;
    if(currentImage >= imageName.length){
      currentImage = 0;
    }
    setState(() {    });
  }
}