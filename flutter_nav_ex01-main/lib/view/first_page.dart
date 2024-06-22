import 'package:flutter/material.dart';

import 'first_image.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1st'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Screen 1st'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const FirstImage();
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
        ),
      ),
    );
  }
}