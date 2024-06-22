import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
late int count;
  @override
  void initState() {
    super.initState();
    count = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Up'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '현재 클릭수는 $count 입니다.',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            FloatingActionButton( // body 안에서도 사용할 수 있으나 다른 object와 함께 움직인다.
              onPressed: () {
                count++;
                setState(() {});
              },
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              child: const Column(
                children: [
                  Text('증가'),
                  Icon(Icons.add),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton( // floatingActionButton을 ElevatedButton으로 해줄 수 있으나 움직이지는 않음.
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
        onPressed: (){
          count++;
          setState(() {});
        }, 
        child: 
            Text('증가'),
      ),
      
      // 항상 그자리에 떠있는 버튼. 
      // Body안에도 쓸 수 있음.
      // FloatingActionButton말고 다른 버튼을 사용할 수 있음. 하지만 움직이지 않고 그 자리에만 있음.

      // floatingActionButton: FloatingActionButton(  
      //   onPressed: () {
      //     count++;
      //     setState(() {});
      //   },
      //   backgroundColor: Colors.red,
      //   foregroundColor: Colors.white,
      //   child: Column(
      //     children: [
      //       Text('증가'),
      //       Icon(Icons.add),
      //     ],
      //   ),
      // ),
    );
  }
}