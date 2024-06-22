import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String btxt;
  late Color bcolor;
 
  @override
  void initState() {
    super.initState();
    btxt = 'Hello';
    bcolor = Colors.blue;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change button color & text'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: bcolor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () => chgState(), 
              child: Text(btxt),
            )
          ],
        ),
      ),
    );
  }
  // -------- Functions --------
  chgState(){
    if(btxt == 'Hello'){
      btxt = 'Flutter';
      bcolor = Colors.yellow;
    }else{
      btxt = 'Hello';
      bcolor = Colors.blue;
    }
    setState(() {
      
    });
  }
}