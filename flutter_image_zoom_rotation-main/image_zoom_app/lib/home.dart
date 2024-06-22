import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  late String _lampImage;
  late double _lampWidth;
  late double _lampHeight;
  late String _buttonName;
  late bool _switch;
  late String _lampSizeStatus;

  late double _rotation; // 회전 각도

  @override
  void initState() {
    super.initState();
    _lampImage = 'images/lamp_on.png';
    _lampWidth = 150;
    _lampHeight = 300;
    _buttonName = "Images 확대";
    _switch = true;
    _lampSizeStatus = "small";
    _rotation = 0;

    Timer.periodic(const Duration(seconds: 1), (timer) { 
      // rotationImage();
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image 확데 축소'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 580,
              child: Column(
                // 그냥 사이즈드박스에 이미지를 넣으면 크기가 변하지 않음. Column으로 땅을 나눠줘야 적용됨.
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RotationTransition(
                    turns: AlwaysStoppedAnimation(_rotation / 360),
                    child: Image.asset(
                      _lampImage,
                      width: _lampWidth,
                      height: _lampHeight,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => decisionLampSize(),
                  child: Text(_buttonName),
                ),
                Column(
                  children: [
                    const Text(
                      '전구 스위치',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Switch(
                      value: _switch,
                      onChanged: (value) {
                        _switch = value;
                        decisionOnOff();
                      },
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              // SizedBox
              // Container(color:Colors.amber, width: 250)는 색상을 사용할 때.
              width: 250,
              child: Slider(
                value: _rotation,
                min: 0,
                max: 360,
                onChanged: (value) {
                  _rotation = value;
                  if(value >= 180){
                    _lampImage = "images/lamp_off.png";
                  }else{
                    _lampImage = 'images/lamp_on.png';
                  }
                  setState(() {});
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  // ---- Functions ------
  decisionLampSize() {
    if (_lampSizeStatus == 'small') {
      _lampWidth = 250;
      _lampHeight = 500;
      _buttonName = 'Image 축소';
      _lampSizeStatus = 'large';
    } else {
      _lampWidth = 150;
      _lampHeight = 300;
      _buttonName = 'Image 확대';
      _lampSizeStatus = 'small';
    }
    setState(() {});
  }

  decisionOnOff() {
    if (_switch) {
      _lampImage = 'images/lamp_on.png';
    } else {
      _lampImage = 'images/lamp_off.png';
    }
    setState(() {});
  }

  rotationImage(){
    _rotation++;
    setState(() {});
  }
}
