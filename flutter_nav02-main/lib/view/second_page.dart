import 'package:flutter/material.dart';

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
      body: const Center(
        child: Text('Screen 2nd')
        ),
    );
  }
}