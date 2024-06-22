import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _lampImage;
  late bool _lampState;

  @override
  void initState() {
    super.initState();
    _lampImage = "images/lamp_on.png";
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
              _lampImage,
              width: 250,
              height: 500,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if(_lampState){
                        _stayAlert(context, "켜");
                      }else{
                        _changeAlert(context, "켜");
                      }
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    child: const Text('켜기'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if(_lampState){
                        _changeAlert(context,"끄");
                      }else{
                        _stayAlert(context, "꺼");
                      }
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    child: const Text('끄기'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // ----- Functions ----
  _stayAlert(BuildContext context, String state){
    showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          title: const Text('경고'),
          content: Text('현재 램프가 $state진 상태 입니다.'),
          actions: [
            Center(
              child: TextButton(
                onPressed: () => Navigator.of(context).pop(), 
                child: const Text(
                  '네, 알겠습니다.',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  _changeAlert(BuildContext context, String state){
    showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('램프 $state기'),
          content: Text('램프를 $state겠습니까?'),
          actions: [
            Center(
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      changeLampState();
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      '네',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: ()  => Navigator.of(context).pop(), 
                    child: const Text(
                      '아니오',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }


  changeLampState(){
    if(_lampState){
      _lampImage = "images/lamp_off.png";
      _lampState = false;
    }else{
      _lampImage = "images/lamp_on.png";
      _lampState = true;
    }
    setState(() {});
  }



}