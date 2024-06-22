import 'package:flutter/material.dart';
import 'package:tabbar_ex_app/views/first_page.dart';
import 'package:tabbar_ex_app/views/second_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{ // this를 사용하기 위해.
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('피카츄 이미지 탭바'),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          FirstPage(),
          SecondPage(),
        ], 
      ),
      bottomNavigationBar: const TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.looks_one),
            text: "One",
          ),
          Tab(
            icon: Icon(Icons.looks_two),
            text: "Two",
          ),
        ]
      )
    );
  }
}