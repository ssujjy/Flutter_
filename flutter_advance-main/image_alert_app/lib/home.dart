import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late bool _lampState;
  late String _strLampState;
  late String _imagePath;

  @override
  void initState() {
    super.initState();
    _imagePath = "lamp_on.png";
    _strLampState = "켜";
    _lampState = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert를 이용한 메세지 출력'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/$_imagePath',
              width: 250,
              height: 500,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if(_lampState){
                        buttonDialog();
                      }else{
                        actionSheet();
                      }
                    },
                    child: const Text('켜기'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if(_lampState == false){
                        buttonDialog();
                      }else{
                        actionSheet();
                      }
                    },
                    child: const Text('끄기'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  // Functions ----------
  actionSheet(){
    showCupertinoModalPopup(
      context: context, 
      barrierDismissible: false,
      builder: (context) => CupertinoActionSheet(
        title: Text('램프 $_strLampState기'),
        message: Text('램프를 $_strLampState시겠습니까?'),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              changeStateLamp();
              Get.back();
            },
            child: const Text('예'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Get.back();
            },
            child: const Text('아니오'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () => Get.back(),
          child: const Text('Cancel'),
        ),
      ),
    );
  }
  // Functions -------
  changeStateLamp(){
    if(_lampState){
      _imagePath = "lamp_off.png";
      _strLampState = "꺼";
      _lampState = false;
    }else{
      _imagePath = "lamp_on.png";
      _strLampState = "켜";
      _lampState = true;
    }
    setState(() {});                      
  }

  buttonDialog(){
    Get.defaultDialog(
      title: '경고',
      middleText: '현재 램프가 $_strLampState진 상태입니다.',
      backgroundColor: Colors.yellowAccent,
      barrierDismissible: false,
      actions: [
        TextButton(
          onPressed: () => Get.back(), 
          child: const Text('네, 알겠습니다.'),
        ),
      ]
    );
  }
}