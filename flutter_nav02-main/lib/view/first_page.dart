import 'package:flutter/material.dart';

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
      body: const Center(child: 
        Text('Screen 1st')
      ),
    );
  }
}