import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late double _lampWidth;
  late double _lampHeight;
  late String _lampStateImg;
  late bool _lampSwitch;
  late bool _lampSizeSwitch;

  @override
  void initState() {
    super.initState();
    _lampWidth = 150;
    _lampHeight = 300;
    _lampStateImg = 'images/lamp_on.png';
    _lampSwitch = true;
    _lampSizeSwitch = false;

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image 확대 및 축소"),
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
                    _lampStateImg,
                    width: _lampWidth,
                    height: _lampHeight,
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
                      const Text('전구 확대'),
                      Switch(
                        value: _lampSizeSwitch, 
                        onChanged: (value) {
                          _lampSizeSwitch = value;
                          changeLampSize();
                        }
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
                        value: _lampSwitch, 
                        onChanged: (value) {
                          _lampSwitch = value;
                          changeLampSwitch();
                        }
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Functions ------------------
  changeLampSize(){
    if(_lampSizeSwitch){
      _lampWidth = 250;
      _lampHeight = 500;
    }else{
      _lampWidth = 150;
      _lampHeight = 300;
    }
    setState(() {
      
    });
  }
  changeLampSwitch(){
    if(_lampSwitch){
      _lampStateImg = "images/lamp_on.png";
    }else{
      _lampStateImg = "images/lamp_off.png";
    }
    setState(() {
      
    });
  }
}