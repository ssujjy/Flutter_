import 'package:flutter/material.dart';

class SecondImage extends StatelessWidget {
  const SecondImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Image Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('images/smile.png', width: 100,),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text(
              'Go to Home'
            ),
          ),
        ],)
      ),
    );
  }
}