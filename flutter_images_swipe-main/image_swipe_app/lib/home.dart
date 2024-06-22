import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // --- Property
  // Image 배열
  late List imageName;
  // Image 배열 현재 번호
  late int curruntImage;
  
  @override
  void initState() {
    super.initState();
    imageName = [
      'flower_01.png',
      'flower_02.png',
      'flower_03.png',
      'flower_04.png',
      'flower_05.png',
      'flower_06.png',
    ];

    curruntImage = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Swipe'),
      ),
      body: SimpleGestureDetector(
        onHorizontalSwipe: (direction) => _onHorizontalSwipe(direction),
        onVerticalSwipe: (direction) => _onVerticalSwipe(direction),
        onDoubleTap: () => _onDoubleTap(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  imageName[curruntImage],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/${imageName[curruntImage]}',
                    width: 350,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () => _goBack(),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text('<< 이전'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () => _goNext(),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text('다음 >>'),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
  // --- Functions ----
  // Btn 다음 >>
  _goNext(){
    curruntImage += 1;
    if(curruntImage >= imageName.length){
      curruntImage = 0;
    }
  setState(() {});
  }
  // Btn << 이전
  _goBack(){
    curruntImage -= 1;
    if(curruntImage < 0){
      curruntImage = imageName.length - 1;
    }
    setState(() {});
  }
  _onHorizontalSwipe(direction){
    // Swiping을 오른족에서 왼쪽으로 (to)
    if(direction == SwipeDirection.left){
      curruntImage += 1;
      if(curruntImage >= imageName.length){
        curruntImage = 0;
      }
    }else{
      curruntImage -= 1;
      if(curruntImage < 0){
        curruntImage= imageName.length - 1;
      }
    }
    setState(() {});
  }

  _onVerticalSwipe(direction){
    // Swiping을 아래에서 위로 (to)
    if(direction == SwipeDirection.up){
      curruntImage += 1;
      if(curruntImage >= imageName.length){
        curruntImage = 0;
      }
    }else{
      curruntImage -= 1;
      if(curruntImage < 0){
        curruntImage= imageName.length - 1;
      }
    }
    setState(() {});
  }
  // 더블탭 사용시
  _onDoubleTap(){
    curruntImage += 1;
    if(curruntImage >= imageName.length){
      curruntImage = 0;
    }
    setState(() {});
  }


}