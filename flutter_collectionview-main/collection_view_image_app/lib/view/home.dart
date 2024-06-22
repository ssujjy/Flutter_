import 'package:flutter/material.dart';

import '../model/flower.dart';
import 'datail_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<String> _imagePath;

  @override
  void initState() {
    super.initState();
    _imagePath = [
      'images/flower_01.png',
      'images/flower_02.png',
      'images/flower_03.png',
      'images/flower_04.png',
      'images/flower_05.png',
      'images/flower_06.png',
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flower Garden'),
      ),
      body: GridView.builder(
        itemCount: _imagePath.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ), 
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Flower.imagePath = _imagePath[index];
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) {
                    return const DetailView();
                  },
                )
              );
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _imagePath[index],
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}