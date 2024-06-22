import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog with Gesture'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _showDialog(context), //private은 앞에 '_'를 붙인다.
              child: const Text(
                'Hello World',
              ),
            ),
          ],
        )
      ),
    );
  }

  // ----- Functions ----
  _showDialog(BuildContext context){
    showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          backgroundColor: Colors.amber,
          title: const Text('Alert Title'),
          content: const Text('Hello World를 \n Touch했습니다.'),
          actions: [
            Center(
              child: TextButton(
                onPressed: () => Navigator.of(context).pop(), 
                child: const Text('종료'),
              ),
            )
          ],
        );
      },
    );
  }


}