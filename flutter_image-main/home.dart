import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      // appBar: AppBar(
      //   title: const Text('Image Test'),
      //   backgroundColor: Colors.blue,
      //   foregroundColor: Colors.white,
      // ),
      body: SingleChildScrollView(  // 기본값 : vertical 위아래로 스크롤 - Column을 사용해야함. 
        // scrollDirection: Axis.horizontal, // 옆으로 스크롤 - Row를 사용해야함.
        child: Center(child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/smile.png',
                width: 150,
                height: 150,
              ),
              Image.asset(
                'images/smile.png',
                width: 50,
                height: 100,
                fit: BoxFit.fill
              ),
              Image.asset(
                'images/smile.png',
                width: 100,
                fit: BoxFit.contain,  // 기본값.
              ),
              Image.asset(
                'images/smile.png',
                width: 50,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'images/smile.png',
                width: 150,
              ),
              Image.asset(
                'images/smile.png',
                width: 150,
              ),
              Image.asset(
                'images/smile.png',
                width: 150,
              ),
              Image.asset(
                'images/smile.png',
                width: 150,
              ),
              Image.asset(
                'images/smile.png',
                width: 150,
              ),
              Image.asset(
                'images/smile.png',
                width: 150,
              ),
            
            ],
          )
        ,),
      ),
    );
  }
}