import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _lampImage;
  late double _imageWidth;
  late double _imageHeight;
  late bool _switchLampColor;
  late bool _switchLampSize;
  late bool _switchLampOnOff;

  @override
  void initState() {
    super.initState();
    _lampImage = "images/lamp_on.png";
    _imageWidth = 250;
    _imageHeight =  500;
    _switchLampColor = false;
    _switchLampSize  = true;
    _switchLampOnOff = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image 확대 및 축소'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 530,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _lampImage,
                    width: _imageWidth,
                    height: _imageHeight,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const Text('전구 색깔'),
                      Switch(
                        value: _switchLampColor, 
                        onChanged: (value) {
                          _switchLampColor = value;
                          changeColor();
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const Text('전구 확대'),
                      Switch(
                        value: _switchLampSize, 
                        onChanged: (value) {
                          _switchLampSize = value;
                          changeSize();
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const Text('전구 스위치'),
                      Switch(
                        value: _switchLampOnOff, 
                        onChanged: (value) {
                          _switchLampOnOff = value;
                          changeOnOff();
                        },
                      ),
                    ],
                  ),
                ),
            ],)
          ],),
      ),
    );
  }
  // Functions --------------
  changeColor(){
    if(_switchLampColor == false){
      _lampImage = "images/lamp_on.png";
    }else{
      _lampImage = "images/lamp_red.png";
    }
    setState(() {
      
    });
  }
  changeSize(){
    if(_switchLampSize){
      _imageWidth = 250;
      _imageHeight = 500;
    }else{
      _imageWidth = 150;
      _imageHeight = 300;
    }
    setState(() {
      
    });
  }
  changeOnOff(){
    if(_switchLampOnOff){
      if(_switchLampColor == false){
        _lampImage = "images/lamp_on.png";
      }else{
        _lampImage = "images/lamp_red.png";
      }
    }else{
      _lampImage = "images/lamp_off.png";
    }
    setState(() {
      
    });
  }
}