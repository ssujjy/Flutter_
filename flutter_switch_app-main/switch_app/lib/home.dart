import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  late bool switchValue;
  late String appBarTitle;
  late String imgName;

  @override
  void initState() {
    super.initState();
    switchValue = true;
    appBarTitle = 'Pikachu';
    imgName = "images/img1.png";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: switchValue, 
              onChanged: (value) {
                switchValue = value;
                changeSwitch();
              }
            ),
            Image.asset(
              imgName,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
  //----- Functions ----- 
  changeSwitch(){
    if(switchValue == false){
      appBarTitle = 'Smile';
      imgName = "images/smile.png";
    }else{
      appBarTitle = 'Pikachu';
      imgName = "images/img1.png";
    }
    setState(() {}); 
  }
}