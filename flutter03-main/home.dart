import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Row'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Cathy'),
                SizedBox(
                  width: 10,
                ),
                Text('Kenny'),
                SizedBox(
                  width: 10,
                ),
                Text('James')
            ]
          )
          ]
          
        )
      ,),
    );
  }
}