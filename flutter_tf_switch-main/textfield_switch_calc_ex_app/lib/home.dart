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

  late bool sumSwt;
  late bool subSwt;
  late bool mulSwt;
  late bool divSwt;

  late String sumRst;
  late String subRst;
  late String mulRst;
  late String divRst;

  @override
  void initState() {
    num1 = TextEditingController();
    num2 = TextEditingController();
    sum = TextEditingController();
    sub = TextEditingController();
    mul = TextEditingController();
    div = TextEditingController();

    sumSwt = true;
    subSwt = true;
    mulSwt = true;
    divSwt = true;

    sumRst = "";
    subRst = "";
    mulRst = "";
    divRst = "";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('간단한 계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          TextField(
            controller: num1,
            //readOnly: true,
            decoration: const InputDecoration(
              labelText: '첫번째 숫자를 입력하세요',
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: num2,
            //readOnly: true,
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
                  onPressed: () => rmCalc(),
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
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const Text('덧셈 : '),
              Switch(
                value: sumSwt,
                onChanged: (value) {
                  sumSwt = value;
                  swtSum();
                },
              ),
              const Text('뺄셈 : '),
              Switch(
                value: subSwt,
                onChanged: (value){
                  subSwt = value;
                  swtSub();
                },
              ),
              const Text('곱셈 : '),
              Switch(
                value: mulSwt,
                onChanged: (value) {
                  mulSwt = value;
                  swtMul();
                },
              ),
              const Text('나눗셈 : '),
              Switch(
                value: divSwt,
                onChanged: (value){
                  divSwt = value;
                  swtDiv();
                },
              ),
            ],
          ),
          TextField(
            controller: sum,
            //readOnly: true,
            decoration: const InputDecoration(
              labelText: '덧셈 결과',
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: sub,
            readOnly: true,
            decoration: const InputDecoration(
              labelText: '뺄셈 결과',
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: mul,
            readOnly: true,
            decoration: const InputDecoration(
              labelText: '곱셈 결과',
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: div,
            readOnly: true,
            decoration: const InputDecoration(
              labelText: '나눗셈 결과',
            ),
            keyboardType: TextInputType.number,
          ),
        ]),
      ),
    );
  }

  // ----- Functions ------
    inputCheck(){
    // textField에 data가 있을 경우와 없을 경우.
    if(num1.text.trim().isNotEmpty && num2.text.trim().isNotEmpty){
      calc();
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

  calc() {
    sumRst = (int.parse(num1.text) + int.parse(num2.text)).toString();
    subRst = (int.parse(num1.text) - int.parse(num2.text)).toString();
    mulRst = (int.parse(num1.text) * int.parse(num2.text)).toString();
    divRst = (int.parse(num1.text) / int.parse(num2.text)).toString();

    swtSum();
    swtSub();
    swtMul();
    swtDiv();

    setState(() {});
  } // calc()

  rmCalc() {
    num1.text = "";
    num2.text = "";
    sum.text = "";
    sub.text = "";
    mul.text = "";
    div.text = "";

    setState(() {});
  } // calc()

  swtSum() {
    if (sumSwt == true) {
      sum.text = sumRst.toString();
    } else {
      sum.text = "";
      // sumSwt = false;
    }

    setState(() {});
  }

  swtSub() {
    if (subSwt == true) {
      sub.text = subRst.toString();
    } else {
      sub.text = "";
      // subSwt = false;
    }
    setState(() {});
  }

  swtMul() {
    if (mulSwt == true) {
      mul.text = mulRst.toString();
    } else {
      mul.text = "";
      // mulSwt = false;
    }
    setState(() {});
  }

  swtDiv() {
    if (divSwt == true) {
      div.text = divRst.toString();
    } else {
      div.text = "";
      // divSwt = false;
    }
    setState(() {});
  }
}
