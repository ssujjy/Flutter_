import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});  // Constructor

  @override
  Widget build(BuildContext context) {  // build 그려주는 애.
    return Scaffold(  // 배치해주는 애
      appBar: AppBar( // Dictionary(Key:Value)
        title: const Text('삼국지'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 148, 184),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(  // Column을 사용하면 아래로 계속 추가 할 수 있음.
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("유비"),  // ***이나 이모티콘도 넣을 수 있음. 
            SizedBox(
              height: 50,
            ),
            Text("관우"),
            Text("장비"),
          ],
        )
        ),
    );
  }
}