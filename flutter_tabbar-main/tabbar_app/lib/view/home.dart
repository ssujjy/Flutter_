import 'package:flutter/material.dart';
import 'package:tabbar_app/view/first_page.dart';
import 'package:tabbar_app/view/second_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  // Property
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this); // this를 사용하려면 class에 with를 추가해줘야 한다. (with SingleTickerProviderStateMixin)
    // length : tab갯수, vsync : 어디에?
  }

  @override
  void dispose() {
    controller.dispose(); // controller먼저 없애주고 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Tab Bar Test'),
      // ),
      body: TabBarView(
        controller: controller,
        children: const [
          FirstPage(),
          SecondPage(),
        ]
      ),
      
      bottomNavigationBar: Container(
        color: Colors.amber,
        height: 80,
        child: TabBar(
          controller: controller,
          labelColor: Colors.blue,
          // indicatorSize: TabBarIndicatorSize.tab,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.red,
          indicatorWeight: 5,
          tabs: [
            Tab(
              icon: //Icon(Icons.looks_one),
              Image.asset(
                'images/smile.png',
                width: 20,
              ),
              text: "One",
            ),
            Tab(
              icon: Icon(Icons.looks_two),
              text: "Two",
            ),
          ],
        ),
      ),
    );
  }
}