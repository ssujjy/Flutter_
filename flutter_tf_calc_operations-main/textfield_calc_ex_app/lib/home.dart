import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController num1;
  late TextEditingController num2;
  late TextEditingController sum;
  late TextEditingController sub;
  late TextEditingController mul;
  late TextEditingController div;

  @override
  void initState() {
    super.initState();
    num1 = TextEditingController();
    num2 = TextEditingController();
    sum = TextEditingController();
    sub = TextEditingController();
    mul = TextEditingController();
    div = TextEditingController();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('간단한 계산기'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          TextField(
            controller: num1,
            decoration: const InputDecoration(
              labelText: '첫번째 숫자를 입력하세요',
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: num2,
            decoration: const InputDecoration(
              labelText: '두번째 숫자를 입력하세요', 
            ),
            keyboardType: TextInputType.number,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                            onPressed: () => inputCheck(),
                            style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('계산하기'),
                            ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                            onPressed: () => removeContents(),
                            style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Text('지우기'),
                            ),
              ),
        
            ],
          ),
          TextField(
            controller: sum,
            readOnly: true,
            decoration: const InputDecoration(
              labelText: '덧셈 결과',
            ),
          ),
          TextField(
            controller: sub,
            readOnly: true,
            decoration: const InputDecoration(
              labelText: '뺄셈 결과', 
            ),
          ),
          TextField(
            controller: mul,
            readOnly: true,
            decoration: const InputDecoration(
              labelText: '곱셈 결과',
            ),
          ),
          TextField(
            controller: div,
            readOnly: true,
            decoration: const InputDecoration(
              labelText: '나눗셈 결과', 
            ),
          ),
        ],),
      ),
    );
  }

  // Functions -----------
  removeContents(){
    sum.text = "";
    sub.text = "";
    mul.text = "";
    div.text = "";
  }
  inputCheck(){
    // textField에 data가 있을 경우와 없을 경우.
    if(num1.text.trim().isNotEmpty && num2.text.trim().isNotEmpty){
      showResult();
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
    int no1 = int.parse(num1.text);
    int no2 = int.parse(num2.text);
    int sum_r, sub_r, mul_r;
    double div_r ;

    sum_r = no1 + no2;
    sub_r = no1 - no2;
    mul_r = no1 * no2;   
    div_r = no1 / no2;

    sum.text = sum_r.toString();
    sub.text = sub_r.toString();
    mul.text = mul_r.toString();
    div.text = div_r.toString();


    // 이것을 꼭 해줘야 적용이 됩니다!!!! 중요!!!
    setState(() { });
  }
// -------------------------



}