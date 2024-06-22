import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'update_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _lampName;
  late bool _lampColor;
  late bool _lampOnOff;

  @override
  void initState() {
    super.initState();
    _lampName = "lamp_on.png";
    _lampColor = true;
    _lampOnOff = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main 화면'),
        actions: [
          IconButton(
            onPressed: () async{
                var returnValue = await Get.to(
                  const UpdatePage(),
                  arguments: [_lampColor, _lampOnOff]
                );
                _lampName = returnValue;
                setState(() {});
              }, 
            icon: const Icon(Icons.create),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/$_lampName',
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}