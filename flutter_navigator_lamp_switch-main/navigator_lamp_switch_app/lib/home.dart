import 'package:flutter/material.dart';
import 'package:navigator_lamp_switch_app/model/lampState.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _lampName;

  @override
  void initState() {
    super.initState();
    _lampName = "images/lamp_on.png";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main 화면'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/updatePage').then((value) => _checkState()), 
            icon: const Icon(Icons.create)
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              _lampName,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
    // Functions ---------
  _checkState(){
    if(LampState.action){
      _lampName = LampState.lampName;
      LampState.action = false;
      setState(() { });
    }
  }
}