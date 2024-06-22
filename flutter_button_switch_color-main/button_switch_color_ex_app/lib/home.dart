import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String btxt;
  late Color bcol;
  late bool swth;
  
  @override
  void initState() {
    super.initState();
    bcol = Colors.blue;
    swth = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Changed Button color on Switch'),
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
                backgroundColor: bcol,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () => chgState(), 
              child: const Text("Flutter"),
            ),
            const SizedBox(
              height: 50,
            ),
            Switch(
              value: swth, 
              onChanged: (value) => chgState(),
              // onChanged: (value){
              //   swth = value;
              //   chgState();
              // }
            ),
          ],
        ),
      ),
    );
  }
  // ----- Functions ------
  chgState(){
    if(swth == false){
        bcol = Colors.red;
        swth = true;
    }else{
        bcol = Colors.blue;
        swth = false;
    }
    setState(() {});
  }
}