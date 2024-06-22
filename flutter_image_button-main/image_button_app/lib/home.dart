import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List imageName;
  late int imageCount;
  
  @override
  void initState() {
    imageName = [
      'flower_02.png',
      'flower_03.png',
      'flower_04.png',
      'flower_05.png',
      'flower_06.png',
      'flower_01.png',
    ];
    imageCount = 0;
    super.initState();
  }
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('무한 이미지 반복'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text(imageName[imageCount]),
              Image.asset('images/${imageName[imageCount]}'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed:  () => _goBack(), 
                    child: const Text('<< 이전'),
                  ),
                  ElevatedButton(
                    onPressed: () => _goNext(), 
                    child: const Text('다음 >>'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  // Functions -------------
  _goBack(){
    imageCount -= 1;
    // imageName[imageCount];
    setState(() {});
  }
  _goNext(){
    imageCount += 1;
    // imageName[imageCount];
    setState(() {});
  }
}