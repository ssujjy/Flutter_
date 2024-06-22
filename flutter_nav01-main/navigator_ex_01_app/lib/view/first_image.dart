import 'package:flutter/material.dart';

class FirstImage extends StatelessWidget {
  const FirstImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Image Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('images/img1.png', width: 100,),
          ElevatedButton(
            onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: const Text(
                'Go to Home'
              ),
            ),
        ],),
      ),
    );
  }
}