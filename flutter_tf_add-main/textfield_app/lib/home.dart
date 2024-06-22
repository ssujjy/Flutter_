import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Property
  // 텍스트 필드는 객수대로 컨트롤러를 만들어 줘야해요.(아래랑 같은 내용)
  late TextEditingController num1Controller;
  late TextEditingController num2Controller;
  late String textSum;

  @override
  void initState() {
    super.initState();
    // 텍스트필드 갯수대로 생성해줘야해요.
    num1Controller = TextEditingController();
    num2Controller = TextEditingController();
    textSum = "";
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // 텍스트필드 외의 space를 눌렀을때 키보드가 내려가게 하기 위해 커서를 없앰.
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('덧셈 구하기'),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: num1Controller,
              decoration: const InputDecoration(
                labelText: '첫번째 숫자를 입력하세요',
                border: OutlineInputBorder(
                  
                )
              ),
              keyboardType: TextInputType.number,
              // keyboardType: TextInputType.number,
              // keyboardType: TextInputType.emailAddress,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: num2Controller,
              decoration: const InputDecoration(
                labelText: '두번째 숫자를 입력하세요',
                border: OutlineInputBorder(
                  
                )
              ),
              keyboardType: TextInputType.number,
            ),
          ),
      
          ElevatedButton(
            onPressed: () => inputCheck(), 
            child: const Text('덧셈계산'),
          ),

          const SizedBox(
            height: 20,
          ),

          Text(
            textSum,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],),
      ),
    );
  }

  // Functions -----------
  inputCheck(){
    // textField에 data가 있을 경우와 없을 경우.
    if(num1Controller.text.trim().isNotEmpty && num2Controller.text.trim().isNotEmpty){
      showResult();
      showSnackBar();
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
    int num1 = int.parse(num1Controller.text);
    int num2 = int.parse(num2Controller.text);
    int sum = num1 + num2;
    
    textSum = '입력한 숫자의 합계는 $sum 입니다.';
    // 이것을 꼭 해줘야 적용이 됩니다!!!! 중요!!!
    setState(() { });
  }

  showSnackBar(){

    int num1 = int.parse(num1Controller.text);
    int num2 = int.parse(num2Controller.text);
    int sum = num1 + num2;

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('입력한 숫자의 합계는 ${sum} 입니다.'),
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.blue,
    ));
  }

}// End