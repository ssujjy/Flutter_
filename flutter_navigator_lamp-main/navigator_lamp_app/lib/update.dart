import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  late TextEditingController controller;
  late bool switchState;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    switchState = true;
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
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: '글자를 입력하세요',
                border: OutlineInputBorder()
              ),
              keyboardType: TextInputType.text,
            ),
            Switch(
              value: switchState, 
              onChanged: (value) {
                
              },
            ),
            ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text('OK'),
            ),  
          ],
        ),
      ),
    );
  }

 // Functions -----------
  inputCheck(){
    // textField에 data가 있을 경우와 없을 경우.
    if(controller.text.trim().isNotEmpty){
      // showResult();
    }else{
      // Error
      errorSnackBar();
    }
  }

  errorSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('숫자를 입력하세요.'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      )
    );
  }

  showResult(){



    // 이것을 꼭 해줘야 적용이 됩니다!!!! 중요!!!
    setState(() { });
  }

}