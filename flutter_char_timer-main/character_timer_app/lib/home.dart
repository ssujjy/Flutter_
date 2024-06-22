import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String inputChar;
  late List showChar;
  // late List charKor;
  late int currentChar;

  @override
  void initState() {
    super.initState();

    inputChar = '대한민국';
    currentChar = 0;

    showChar = inputChar.split(''); // .split('') 이렇게 쓰면 무조건 한글자씩 자른다.
    // print(showChar);
    // charKor = [
    //   '대',
    //   '대한',
    //   '대한민',
    //   '대한민국',
    // ];
    // Timer 설치
    Timer.periodic(const Duration(seconds: 1), (timer) { 
      onChange();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LED 광고'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              showChar[currentChar],
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );

  }

  // Functions ---------
  onChange(){
    currentChar++;
    if(currentChar >= showChar.length){
      currentChar = 0;
      showChar = showChar[currentChar];
    }
    setState(() { });
  }
}