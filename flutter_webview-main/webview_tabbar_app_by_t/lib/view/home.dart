import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TabController controller;
  late List siteName;
  
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    siteName = ['www.naver.com', 'www.google.com', 'www.daum.net'];

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
        title: const Text('WebView - Tabbar'),
      ),
      body: const Text(''),
    );
  }
}