import 'package:flutter/material.dart';
import 'package:navigator_lamp_switch_app/model/lampState.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({super.key});

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  late bool _lampColor;
  late bool _lampOnOff;

  late String _lampColorRedText;
  late String _lampColorYellowText;

  late String _lampOffText;
  late String _lampOnText;


  @override
  void initState() {
    super.initState();
    _lampColor = false;
    _lampOnOff = false;

    _lampColorRedText = "Red";
    _lampColorYellowText = "";

    _lampOffText = "Off";
    _lampOnText = "";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('수정화면'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text(_lampColorRedText),
                Switch(
                  value: _lampColor, 
                  onChanged: (value) {
                    _lampColor = value;
                  },
                ),
                Text(_lampColorYellowText),
              ],
            ),
            Row(
              children: [
                Text(_lampOffText),
                Switch(
                  value: _lampOnOff, 
                  onChanged: (value) {
                    _lampOnOff = value;
                  },
                ),
                Text(_lampOnText),
              ],
            ),
            ElevatedButton(
              onPressed: () => chkLamp(), 
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
        LampState.lampName = 'images/lamp_on.png';
      }else{
        LampState.lampName = 'images/lamp_red.png';
      }
    }else{
      LampState.lampName = 'images/lamp_off.png';
    }

    LampState.action = true;
  }
}