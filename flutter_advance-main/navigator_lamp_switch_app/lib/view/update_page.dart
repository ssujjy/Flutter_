import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({super.key});

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
    // Property
  var value = Get.arguments ?? "__";
  late String _lampName;

  late bool _lampColor;
  late bool _lampOnOff;

  late Color _lampColorRedStyle;
  late Color _lampColorYellowStyle;
  late Color _lampOnStyle;
  late Color _lampOffStyle;


  @override
  void initState() {
    super.initState();
    _lampName = "";
    _lampColor = value[0];
    _lampOnOff = value[1];

    if(_lampColor){
      _lampColorRedStyle = Colors.white;
      _lampColorYellowStyle = Colors.yellow;
    }else{
      _lampColorRedStyle = Colors.red;
      _lampColorYellowStyle = Colors.white;
    }

    if(_lampOnOff){
      _lampOnStyle = Colors.black;
      _lampOffStyle = Colors.white;
    }else{
      _lampOnStyle = Colors.white;
      _lampOffStyle = Colors.black;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('수정화면'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Red",
                  style: const TextStyle(
                    color: _lampColorRedStyle,
                  ),
                ),
                Switch(
                  value: _lampColor, 
                  onChanged: (value) {
                    _lampColor = value;
                    if(_lampColor){
                      _lampColorRedStyle = Colors.white;
                      _lampColorYellowStyle = Colors.yellow;
                    }else{
                      _lampColorRedStyle = Colors.red;
                      _lampColorYellowStyle = Colors.white;
                    }
                    setState(() { });
                  },
                ),
                Text(
                  "Yellow",
                  style: const TextStyle(
                    color: _lampColorYellowStyle,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Off',
                  style: const TextStyle(
                    color: _lampOnStyle,
                  ),
                ),
                Switch(
                  value: _lampOnOff, 
                  onChanged: (value) {
                    _lampOnOff = value;
                    if(_lampOnOff){
                      _lampOnStyle = Colors.black;
                      _lampOffStyle = Colors.white;
                    }else{
                      _lampOnStyle = Colors.white;
                      _lampOffStyle = Colors.black;
                    }
                    setState(() {});
                  },
                ),
                Text(
                  'On',
                  style: const TextStyle(
                    color: _lampOffStyle,
                  ),
                  ),
              ],
            ),
            ElevatedButton(
              onPressed: () { 
                chkLamp();
                Get.back(result: _lampName);
              }, 
              child: const Text('OK'),
            )
          ],
        ),
      ),
    );
  }
  chkLamp(){
    if(_lampColor){
      if(_lampOnOff){
        _lampName = 'lamp_on.png';
      }else{
        _lampName = 'lamp_red.png';
      }
    }else{
      _lampName = 'lamp_off.png';
    }
  }
}