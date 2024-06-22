import 'package:flutter/material.dart';

import '../model/flower.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  @override
  State<DetailView> createState() => _DatailState();
}

class _DatailState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flower'),
      ),
      body: Center(
        child: Image.asset(
          Flower.imagePath,
          width: 250,
          height: 300,
        ),
      ),
    );
  }
}