import 'package:flutter/material.dart';
import 'package:listview_todo_app/model/message.dart';

class InsertList extends StatefulWidget {
  const InsertList({super.key});

  @override
  State<InsertList> createState() => _InsertListState();
}

class _InsertListState extends State<InsertList> {
  late TextEditingController textEditingController;
  late bool cartSwitch;
  late bool clockSwitch;
  late bool pencilSwitch;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    cartSwitch = true;
    clockSwitch = false;
    pencilSwitch = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('구매'),
                  Switch(
                    value: cartSwitch, 
                    onChanged: (value) {
                      cartSwitch = value;
                      if(cartSwitch){
                        clockSwitch = false;
                        pencilSwitch = false;
                      }
                      checkDefaultSwitch();
                    },
                  ),
                  Image.asset(
                    'images/cart.png',
                    width: 40,
                    height: 40,
                    ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('약속'),
                  Switch(
                    value: clockSwitch, 
                    onChanged: (value) {
                      clockSwitch = value;
                      if(clockSwitch){
                        cartSwitch = false;
                        pencilSwitch = false;
                      }
                      checkDefaultSwitch();
                    },
                  ),
                  Image.asset(
                    'images/clock.png',
                    width: 40,
                    height: 40,
                    ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('스터디'),
                  Switch(
                    value: pencilSwitch, 
                    onChanged: (value) {
                      pencilSwitch = value;
                      if(pencilSwitch){
                        cartSwitch = false;
                        clockSwitch = false;
                      }
                      checkDefaultSwitch();
                    },
                  ),
                  Image.asset(
                    'images/pencil.png',
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  labelText: '목록을 입력하세요', 
                ),
                keyboardType: TextInputType.text,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    if(textEditingController.text.trim().isNotEmpty){
                      addList();
                    }
                    Navigator.pop(context);
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('OK'),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
  // Functions ------
  checkDefaultSwitch(){
    if(cartSwitch == false && clockSwitch == false && pencilSwitch == false){
      cartSwitch = true;
    }
    setState(() {});
  }
  addList(){
    if(cartSwitch){
      Message.imagePath = 'images/cart.png';
    }else if(clockSwitch){
      Message.imagePath = 'images/clock.png';
    }else if(pencilSwitch){
      Message.imagePath = 'images/pencil.png';
    }
    
    Message.workList = textEditingController.text;
    Message.action = true;
  }
}