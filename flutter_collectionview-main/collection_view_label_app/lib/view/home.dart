import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<String> heroList;

  @override
  void initState() {
    super.initState();
    heroList = [
      "유비",
      "관우",
      "장비",
      "조조",
      "동탁",
      "조자룡"
    ];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('삼국지 인물'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/add'), 
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: GridView.builder(
        itemCount: heroList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 한줄의 갯수
          crossAxisSpacing: 10, // cross 간격
          mainAxisSpacing: 10, // main 간격
        ), 
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            color: Colors.grey,
            child: Card(
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(heroList[index]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}