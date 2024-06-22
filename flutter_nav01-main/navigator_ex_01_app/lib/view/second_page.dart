import 'package:flutter/material.dart';

import 'second_image.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2nd'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Screen 2nd'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const SecondImage();
                }));
              },
              child: const Text(
                'Go to the second page',
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            )
          ],
        )
        ),
    );
  }
}