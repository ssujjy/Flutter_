import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController controller;
  late String inputChar;
  late List showChar;
  late int currentChar;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    inputChar = 'Hello ';
    currentChar = 0;

    showChar = inputChar.split(''); 
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
        child: Text(
              showChar[currentChar],
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // listView의 safeArea(padding)를 사용하지 않겠다.
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('광고 문구를 입력하세요.'), 
              accountEmail: Text(''),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)
                )
              ),
            ),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: '글자를 입력하세요',
              ),
              keyboardType: TextInputType.text,
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
      print(showChar);
    }else{
      showChar += showChar[currentChar];
      print(showChar);
    }
    setState(() { });
  }
}