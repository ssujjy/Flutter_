import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController height;
  late TextEditingController weight;
  late String bmiResult;

  @override
  void initState() {
    height = TextEditingController();
    weight = TextEditingController();
    bmiResult = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI 계산기'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: height,
              decoration: const InputDecoration(
                labelText: '신장을 입력하세요 (단위 : cm)',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: weight,
              decoration: const InputDecoration(
                labelText: '몸무게를 입력하세요 (단위 : kg)',
              ),
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () => calcBMI(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text('BMI 계산'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              bmiResult,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              'images/bmi.png',
              width: 300,
            )
          ],
        ),
      ),
    );
  }
  // ------ Functions ----------
  calcBMI(){
    double dHeight = double.parse(height.text)/100.0;
    double dWeight = double.parse(weight.text);
    double bmi = double.parse((dWeight/(dHeight*dHeight)).toStringAsFixed(1)) ;
    String bmiTxt = "";
    if(bmi >= 30){
      bmiTxt = "고도비만";
    }else if(bmi >= 25){
      bmiTxt = "비만";
    }else if(bmi >= 23){
      bmiTxt = "과체중";
    }else if(bmi >= 18.5){
      bmiTxt = "정상체중";
    }else if(bmi >= 0){
      bmiTxt = "저체중";
    }
    bmiResult = '귀하의 BMI 지수는 $bmi 이고 $bmiTxt입니다.';
    setState(() {
      
    });
  }
}
